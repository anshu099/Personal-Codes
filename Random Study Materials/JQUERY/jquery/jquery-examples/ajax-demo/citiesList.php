<?php
$state = trim(strtolower($_POST['state']));

$punjab_cities = array('amritsar', 'bhatinda', 'chandigarh');
$karnataka_cities = array('bangalore', 'mysore', 'hubli', 'mangalore');
$tamilnadu_cities = array('chennai', 'coimbatore', 'madurai');
$maharashtra_cities = array('mumbai', 'nagpur', 'pune');
$goa_cities = array('panjim', 'vasco', 'margao', 'ponda');

switch($state){
	case 'punjab':
		foreach($punjab_cities as $val){
			$cities .= '<option value="'.$val.'">'.$val.'</option>';
		}
		break;
		
	case 'karnataka':
		foreach($karnataka_cities as $val){
			$cities .= '<option value="'.$val.'">'.$val.'</option>';
		}
		break;
		
	case 'tamilnadu':
		foreach($tamilnadu_cities as $val){
			$cities .= '<option value="'.$val.'">'.$val.'</option>';
		}
		break;
		
	case 'maharashtra':
		foreach($maharashtra_cities as $val){
			$cities .= '<option value="'.$val.'">'.$val.'</option>';
		}
		break;
		
	case 'goa':
		foreach($goa_cities as $val){
			$cities .= '<option value="'.$val.'">'.$val.'</option>';
		}
		break;
		
	default:
		$cities = '<option value="other">Other</option>';
}
print $cities;
?>