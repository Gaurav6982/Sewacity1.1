<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Feedback</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
    </head>
    <style>


input[type='text'],input[type='email'],
textarea
{
    font-family: Arial, FontAwesome;
}

body{
    background-color: rgb(58, 220, 241);
}
.hefe{
    background-color: rgb(255, 254, 251);
}
.hefee{
    background-color: rgb(251, 253, 91);
}
#loading{
                position: fixed;
                width: 100%;
                height: 100vh;
                z-index: 999999;
                justify-content: center;
                align-items: center;
                display: flex;
                background-color: #E26A2C;
                background-color: rgb(15 6 20 / 90%);
            }
    </style>
    <body onload="myFunction()">
        <div id="loading" >
            <img src="{{'assets/pred.gif'}}" alt="preloader">
          </div>
        @include('inc.messages')
        <div class="container feed">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h2 class="hefee text-center" style="box-shadow: 0 0 10px 5px;padding: 2px;font-family: 'Russo One', sans-serif;">Feedback</h2>
                    <p > Please provide your feedback below: </p>
                    <form role="form"  id="reused_form" method="post" action="/feedback/submit">
                        {{csrf_field()}}
                        <div class="row ">
                            <div class="col-sm-12 form-group">
                                <h3 style="font-weight: 600">How do you rate your overall experience with Sewacity?</h3>
                                <p>
                                    <label class="radio-inline">
                                        <input type="radio" name="experience" id="radio_experience" value="Bad" >
                                        <i class="fa fa-frown-o fa-2x" aria-hidden="true"></i> Bad
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="experience" id="radio_experience" value="Average" >
                                        <i class="fa fa-meh-o fa-2x" aria-hidden="true"></i> Just OK
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="experience" id="radio_experience" value="Good" checked>
                                        <i class="fa fa-smile-o fa-2x" aria-hidden="true"></i> Good
                                    </label>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label for="comments" style="font-weight: 600"> Comments:</label>
                                <textarea class="ckeditor form-control" required type="textarea" id="comments" placeholder="&#xf040;" name="comments" maxlength="6000" rows="7"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="name" style="font-weight: 600"> Your Name:</label>
                                <input type="text" class="form-control" placeholder="&#xf007;" id="name" name="name" required>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label for="email" style="font-weight: 600"> Email:</label>
                                <input type="email" class="form-control" placeholder="&#xf003;" id="email" name="email" required>
                            </div>
                        </div>

                        <!--normal varification k baad site pe public krna hai -->
                        <div class="row" style="padding: 20px">
                            <div class="col-sm-12 form-group">
                                <button type="submit" class="btn btn-lg btn-warning pull-right"  data-container="body" data-toggle="popover" data-placement="top" data-content="Coming Soon"> <i class="fa fa-send-o " aria-hidden="true"></i> Send &rarr;</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script>
        var preloader = document.getElementById('loading');
        function myFunction (){
         preloader.style.display = 'none';
        }
     </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
    <script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        // $('.ckeditor').ckeditor();
    });
</script>
</html>
