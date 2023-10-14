function cart_manage(itemId, action) {
  // Make an AJAX request to the server-side script
  $.ajax({
    url: 'manage_cart.php',
    method: 'POST',
    data: { itemId: itemId, action: action },
    success: function(response) {
      if (response === 'success') {// Function to display the alert box
         alert('Item add to Cart.'); 
/*         $(document).ready(function(){
          $("#dialog").dialog({
            modal: true,
            buttons: {
              Ok: function() {
                $(this).dialog("close");
              }
            }
                
              });
            }); */
/*           function showAlert() {
          alert('Item added to wishlist!');
        }
        
        // Set the timer for 5 seconds (5000 milliseconds)
        alertTimeout= setTimeout(showAlert, 3000);
        setTimeout(function() {
          clearTimeout(alertTimeout);
        }, 6000); */
        

        /* location.reload(); */
           /* alert('Item added to wishlist!');   */ 
      } else {
        alert('An error occurred while adding to Cart.');
      }
    },
    error: function() {
      alert('An error occurred.');
    }
  });
}