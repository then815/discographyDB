<?php 
$title='Shop';
include 'inc/header.php';
$message = '';

$db = new MySQLi('localhost','then815_disco','password!@34','then815_disco');
if($db->connect_error){
    $message = $db->connect_error;
}else{
   $sql = 'SELECT * FROM Items';
    $result = $db->query($sql);
    if($db->error){
        $message = $db->error;
    }
}
?>
 <main>
            
        	
               
            	<?php if($message){
    echo $message;} else{ ?>
                    <div class ="page open">
                         <form method="post" action="confirm.php" id="orderform">
                        <?php 
                         $i = 0;
                         while ($row = $result->fetch_assoc()){
                            if($i % 4 === 0){ ?>
                        <div class="section">
                            <ul class="reset tiles">
                               <?php } ?> 
                                <li>
                                    
                                        <img src="images/<?php echo $row['image'];?>.jpeg" alt="<?php echo $row['description'];?>" height="150" width="150" />
                                        <h3 class="h4"><?php echo $row['item'];?></h3>
                                        <p class="reset">$<?php echo $row['price']?></p>
                                    
                                    <p>Quantity:
                                        <select name="qty_<?php echo $row['image'];?>" class="qty">
                                           <?php
                                                for($i= 0;$i<6;$i++){
                                                    
                                                    echo "<option value='$i'>$i</option>";
                                                        }?>    
                                        </select>
                                    <input type="hidden" name="img_<?php echo $row['image'];?>" value="<?php echo $row['image'];?>">
                                    </p>
                                    
                                </li>
                             <?php
                             $i++;
                             if($i%4===0){ ?>
                            </ul>
                         </div> 
                               <?php } ?>
                          <?php
                        } //end of item loop ?>      
                        
                        
                        <input type="submit" name="order" id="order" value="Add to Basket" class="button">
                            </form>
                      
                        
                    </div><?php } //end of page?>
            
        </main>       
    <?php include 'inc/footer.php';?>
