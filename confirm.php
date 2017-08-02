<?php 
$title='Confirmation';
include 'inc/header.php';
$message = '';
if(isset($_POST['order'])){
        $quantity=array();
        $image=array();   
        foreach($_POST AS $key=>$value){
            if(strpos($key,'qty_') === 0){
                $quantity[substr($key,4)] = $value;
            }
            elseif(strpos($key,'img_') === 0){
                $image[substr($key,4)] = $value;
            }
        }                   
$price= array(
    'betweenshirt'=>20,
    'birdsposter'=>10,
    'dreamsshirt'=>20,
    'enconcertdvd'=>25,
    'festivalposter'=>10,
    'greekdvd'=>25,
    'guitarposter'=>10,
    'hertonowshirt'=>20,
    'ponposter'=>10,
    'redrockposter'=>10,
    'sanfranposter'=>10,
    'septsessionsdvd'=>25,
    'sttsposter'=>10,
    'thickerwaterdvd'=>25,
    'ttsposter'=>10
);        
        }
$total = 0;
?>

<main>
    <h1>Thank You</h1>
    <?php if(!isset($quantity) || array_sum($quantity) === 0){ ?>
    <p>You have not selected any items.</p>
    <?php ;}else { ?>
    <p>Please review your items below.</p>
    <table class='order'>
        <tr>
            <th scope="col">&nbsp;</th>
            <th scope='col'>&nbsp;</th>
            <th scope="col">Item ID</th>
            <th scope='col'>&nbsp;</th>
            <th scope="col">Quantity</th>
            <th scope="col">&nbsp;</th>
            <th scope="quantity">Cost</th>
        </tr>
        <?php foreach($quantity AS $item => $amount):
            if($amount > 0):
        ?>
        <tr>
            
            <td><img src="images/<?php echo $item;?>.jpeg" alt="" width="80" height="80"/></td>
            <td>&nbsp;</td>
            <td class='items'><?php echo $item;?></td>
            <td>&nbsp;</td>
            <td class='quantity'><?php echo $amount;?></td>
            <td>&nbsp;</td>
            <td class='cost'>$<?php echo $cost = $amount * $price[$item]; 
                $total += $cost; ?></td>
        </tr>
        <?php 
        endif;
        endforeach; ?>
            <tr>
                <td colspan="5">Shipping</td>
                <td><?php if ($total < 75){
                    echo '$10';
                    $total+=10;
                    }else{
                    echo 'Free';}?></td>
            </tr>
            <tr>
                <td colspan="5">Total</td>
                <td><?php echo '$'.$total;?></td>
            </tr>
    </table> 
    <?php } ?>

</main>

<?php include 'inc/footer.php';?>