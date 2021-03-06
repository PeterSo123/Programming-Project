
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.8.2/xlsx.full.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/1.3.3/FileSaver.min.js"></script>


<script>


    $(document).ready(function () {
  

        //綁定change事件，讀xlsx檔
        $('#upload_input').on('change', function (e) {

            //取得上傳第一個檔案
            var files = e.target.files;
            var f = files[0]; 

            //使用FileReader讀檔
            var reader = new FileReader();

            //檔案名稱
            var name = f.name;

            //onload觸發事件
            reader.onload = function (e) {

                //對象內資料
                var data = e.target.result;

                //讀取xlsx資料
                var retjson = readxlsx(data, 'json');
                var retcsv = readxlsx(data, 'csv');


            };

            //以BinaryString讀入
            reader.readAsBinaryString(f);

        });
    });


    function readxlsx(inpdata, fmt) {
        //讀取xlsx檔

        //參數
        //inpdata為由input file讀入之data
        //fmt為讀取格式，可有"json"或"csv"，csv格式之分欄符號為逗號，分行符號為[\n]

        //說明
        //所使用函式可參考js-xlsx的GitHub文件[https://github.com/SheetJS/js-xlsx]


        //to_json
        function to_json(workbook) {
            var result = {};
            workbook.SheetNames.forEach(function (sheetName) {
                var roa = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
                if (roa.length > 0) {
                    result[sheetName] = roa;
                }
            });
            console.log(result);
            return result;
        }


        //讀檔
        var workbook = XLSX.read(inpdata, { type: 'binary' });


        //轉為json物件回傳
        if (fmt === 'json') {
            return to_json(workbook);
        }


    }

</script>