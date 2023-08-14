<!DOCTYPE html>
<html lang="en">

    <!-- head -->
    <?php include'head.php'; ?>

<body>
    <div id="app">
        <div id="main" class="layout-horizontal">
            <header class="">

                <?php include'navbar.php' ?>

            </header>

            <div class="content-wrapper">
                
            <?= $content; ?>

            </div>

           <?php include'footer.php' ?>

        </div>
    </div>
    
    <?php include 'javascript.php' ?>

</body>

</html>
