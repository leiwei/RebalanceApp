var jsonTree = function (wrap, obj) {
    if (typeof wrap === 'string') wrap = document.getElementById(wrap);
    wrap.innerHTML = jsonTree.html(obj);

    jsonTree.event(wrap);
};
// 生成UI
jsonTree.html = function (obj) {
    var html = [], i, length,
        toString = Object.prototype.toString,
        isArray = function (obj) {
            return toString.call(obj) === '[object Array]';
        };

    var each = function (obj, parent) {
        if (isArray(obj)) {
            length = obj.length;
            for (i = 0; i < length; i ++) {
                html.push('<dd><a href="');
                html.push(obj[i]['url']);
                html.push('"><span class="jsonTree-number">');
                html.push(i + 1);
                html.push('.</span> <span class="jsonTree-name">');
                html.push(obj[i]['name']);
                html.push('</span></a></dd>');
            };
        } else if (typeof obj === 'object') {
            for (i in obj) {
                html.push('<dd><dl class="jsonTree-show"><dt><span class="jsonTree-icon"></span>');
                html.push(i);
                html.push('</dt>');
                html.push(each(obj[i], i));
                html.push('</dl></dd>');
            };
        };
        return html;
    };

    return '<dl class="jsonTree">' + each(obj).join('') + '</dl>';
};
// 绑定行为
jsonTree.event = function (wrap) {
    wrap.onclick = function (event) {
        event = event || window.event;
        var link, bar,
            target = event.target || event.srcElement,
            parentNode = target.parentNode;

        if (target.nodeName === 'DT') bar = target;
        if (target.nodeName === 'A') link = target;
        if (parentNode.nodeName === 'DT') bar = parentNode;
        if (parentNode.nodeName ===  'A') link = parentNode;

        if (bar) {
            bar.parentNode.className = bar.parentNode.className === 'jsonTree-show' ?
                'jsonTree-hide' :
                'jsonTree-show';
        } else if (link) {
            // [code..]
        };

        try {
            'getSelection' in window ?
                window.getSelection().removeAllRanges() :
                document.selection.empty();
        } catch (e) {};
    };
};