<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Read post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="css/base.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">Appname</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">DIET & NUTRITION </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">FITNESS </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">NEWS</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="d-flex bg-light" id="usrLevels">
        <div>
            <p>Basic</p>
        </div>
        <div class="selected">
            <p>Intermediate</p>
        </div>
        <div>
            <p>Advanced</p>
        </div>
    </div>

    <div class="main-content">

        <nav aria-label="breadcrumb" class="mt-4 mt-md-5">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Category</a></li>
                <li class="breadcrumb-item active" aria-current="page">Post</li>
            </ol>
        </nav>

        <div class="row">

            <div class="container mt-4 mt-md-1 col-12 col-lg-8">
                <section class="hero">
                    <img src="img/sample-img0.jpg" alt="Sample">
                </section>
        
                <div class="post-card details p-5">
                    <h3>Title</h3>
                    <p>
                        A labore temporibus dolor fugit laborum sed. Odit consequuntur, a temporibus voluptatibus doloremque blanditiis rem officiis praesentium?
                        A labore temporibus dolor fugit laborum sed. Odit consequuntur, a temporibus voluptatibus doloremque blanditiis rem officiis praesentium?
                    </p>
                    <video src="img/video.mp4" preload="auto" autoplay muted loop></video>
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Provident nobis dolorem iusto adipisci quasi architecto incidunt impedit tempora aperiam, qui, veritatis quisquam nemo ipsum modi laboriosam accusamus. Quidem, quas perferendis.</p>
                    <ul class="mx-md-3">
                        <li>
                            <p>text for one element of this list</p>
                        </li>
                        <li>
                            <p>text for one element of this list</p>
                        </li>
                        <li>
                            <p>text for one element of this list</p>
                        </li>
                        <li>
                            <p>text for one element of this list</p>
                        </li>
                    </ul>
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Provident nobis dolorem iusto adipisci quasi architecto incidunt impedit tempora aperiam, qui, veritatis quisquam nemo ipsum modi laboriosam accusamus. Quidem, quas perferendis.</p>
                </div>
            </div>

            <div class="col-4" id="left">
                <div class="card post-card sub-post ms-4">
                    <img src="img/sample-img0.jpg" alt="Sample">
                    <div class="card-body">
                        <h3>A generic one</h3>
                        <p>A labore temporibus dolor fugit laborum sed. Odit consequuntur, a temporibus voluptatibus doloremque blanditiis rem officiis praesentium?</p>
                        <div class="custom-card-footer">
                            <a href="post-1.html" class="btn btn-sm btn-custom-light">Read more</a>
                        </div>
                    </div>
                </div>

                <div class="card post-card sub-post ms-4">
                    <img src="img/sample-img0.jpg" alt="Sample">
                    <div class="card-body">
                        <h3>A generic one</h3>
                        <p>A labore temporibus dolor fugit laborum sed. Odit consequuntur, a temporibus voluptatibus doloremque blanditiis rem officiis praesentium?</p>
                        <div class="custom-card-footer">
                            <a href="post-1.html" class="btn btn-sm btn-custom-light">Read more</a>
                        </div>
                    </div>
                </div>
            </div>
        
            <div class="container col-12">
        
                <form action="" class="mt-5 mb-5 message">
                    <div class="row m-0">
            
                        <div class="col-10">
                            <input type="text" class="form-control" placeholder="Comment here . . . ">
                        </div>
            
                        <div class="col-1">
                            <button type="submit" class="btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
                                    <path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
                                </svg>
                            </button>
                        </div>
                    </div>
                </form>
        
                <div class="card d-flex flex-row mx-4 mt-4 mt-md-3 vertical-align-center p-3 p-md-2 comment">
                    <img src="https://www.pinclipart.com/picdir/middle/148-1486972_mystery-man-avatar-circle-clipart.png" alt="user">
                    <p>
                        Martin - Hello!
                    </p>
                </div>
        
                <div class="card d-flex flex-row mx-4 mt-4 mt-md-2 vertical-align-center p-3 p-md-2 comment">
                    <img src="https://www.pinclipart.com/picdir/middle/148-1486972_mystery-man-avatar-circle-clipart.png" alt="user">
                    <p>
                        Martin - Hello!
                    </p>
                </div>
            </div>
        </div>
    
    </div>



    <footer class="bg-dark text-white text-center p-2">
        <h1 class="mt-1">Appname</h1>
        <div class="mt-3 footer-links d-flex flex-column flex-md-row">
            <a>Privacy</a>
            <a>Terms of Service</a>
            <a>Ad Choices</a>
            <a>Web Accessibility</a>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous">
    </script>
</body>

</html>