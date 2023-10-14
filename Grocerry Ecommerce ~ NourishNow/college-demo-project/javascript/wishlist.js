function wishlist_manage(itemId, action) {
    // Make an AJAX request to the server-side script
    $.ajax({
      url: 'wishlist_manage.php',
      method: 'POST',
      data: { itemId: itemId, action: action },
      success: function(response) {
        if (response === 'success') {
           alert('Item add to Wishlist'); 
          /* location.reload(); */
/*               const btn = document.getElementById('btn');
              btn.addEventListener('click', () => {
                
                btn.style.color = 'red';
              }); */

        } else {
          alert('An error occurred while adding to wishlist.');
        }
      },
      error: function() {
        alert('An error occurred.');
      }
    });
  }
  