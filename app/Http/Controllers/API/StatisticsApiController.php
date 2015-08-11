<?php namespace App\Http\Controllers\API;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\AddressOffice;
use App\Models\AddressOriginal;
use App\Models\AddressPresent;
use App\Models\CriminalHistory;
use App\Models\DataCase;
use App\Models\DataChild;
use App\Models\DataFather;
use App\Models\DataMother;
use App\Models\DataSpouse;
use App\Models\GuestHistory;
use App\Models\Profile;
use Illuminate\Http\Request;
use \Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;
use \Input;
use Rhumsaa\Uuid\Uuid;
use Servit\Mpdf\Facades\Pdf;

class StatisticsApiController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{

    }

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{

	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{

    }

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{

	}


    public function searchDataCase()
    {


        $start_date = Input::get('start_date');
        $end_date = Input::get('end_date');

       // return $start_date;
        $datacase = DataCase::with('criminalhistory','criminalhistory.nametitle')
            ->whereBetween('date_case', [$start_date, $end_date])
            ->get();

        $person = CriminalHistory::with('datacase','nametitle')
            ->whereBetween('date', [$start_date, $end_date])
            ->get();


        $person_general = GuestHistory::with('nametitle')
        ->whereBetween('created_at', [$start_date, $end_date])
            ->get();



        $data = [$person,$person_general,$datacase];


        $start_date = Input::get('start_date');
        $end_date = Input::get('end_date');

        // return $start_date;
        $datacase = DataCase::with('criminalhistory','criminalhistory.nametitle')
            ->whereBetween('date_case', [$start_date, $end_date])
            ->get();

        $person = CriminalHistory::with('datacase','nametitle')
            ->whereBetween('date', [$start_date, $end_date])
            ->get();




        $person_general = GuestHistory::with('nametitle')
            ->whereBetween('created_at', [$start_date, $end_date])
            ->get();


        $data = [$person,$person_general,$datacase];

        $pdf = \App::make('mpdf.wrapper',['th','A4','','',20,15,20,25,10,10,]);

        $pdf->SetHeader('
        <table width="100%" style="vertical-align: bottom; font-family: TH SarabunPSK; font-size: 14pt; color: #000000; font-weight: bold; font-style: italic;"><tr>
        <td width="20%"><img src="img/police.jpg" width="20" height="20"></td>
        <td width="30%" style="text-align: right; ">{PAGENO}</td>
        <td width="55%" style="text-align: right; "> สำนักงานตำรวจตรวจคนเข้าเมือง จังหวัด เชียงราย</td>
        </tr></table>
        ');
        $pdf->SetFooter('
        <table width="100%" style="vertical-align: bottom; font-family: garuda; font-size: 8pt; color: #000000; font-weight: bold; font-style: italic;"><tr>
        <td width="33%"></td>
        <td width="33%"></td>
        <td width="55%" style="text-align: right; ">พิมพ์เมื่อ {DATE D} ที่ {DATE j-m-Y} เวลา {DATE H:i:s}  </td>
        </tr></table>
        ');


        $pdf->SetWatermarkText("");

        $pdf->SetDisplayMode('fullpage');


        $html = view('PDF.statistic')->with('data',$data)->render();
//        return $html;
            $pdf->WriteHTML($html);



        return $data;



    }
    public function printDataCase()
    {
        return "asdasdasdasd";





    }





}
