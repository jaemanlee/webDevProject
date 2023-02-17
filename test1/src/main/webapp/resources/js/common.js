 /*
 ** 공통함수 js파일
 */
 
 
jQuery.fn.serializeObject = function() {
    var obj = null;
    try {
        if (this[0].tagName && this[0].tagName.toUpperCase() == "FORM") {
            var arr = this.serializeArray();
            if (arr) {
                obj = {};
                jQuery.each(arr, function() {
                    obj[this.name] = this.value;
                });
            }//if ( arr ) {
        }
    } catch (e) {
        alert(e.message);
    } finally {
    }
 
    return obj;
};

const gfnAjaxStatus= (url,data,callback) => {
	new Promise((succ, fail)=>{
		$.ajax({
			type: "post", //요청 메소드 방식
			headers : {
				"X-HTTP-Method-Override" : "POST"
			},
			contentType:"application/json;charset=UTF-8",
			url:url,
			data : JSON.stringify(data),
			success : function(result){
				succ(result);
			},
			error : function(a, b, c){
				fail(a,b,c);
			}
		
		})
		
	}).then((result) => {
		callback(result);
	}).catch((a,b,c)=> {
		console.log(a);
	})
	
}