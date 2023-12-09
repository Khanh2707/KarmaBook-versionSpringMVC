/**
 * 
 */
const paginationElement = document.getElementsByClassName("pagination");

const paginationValue = {
	truecate: true,
	curPage: 1,
	numberLinkTwoSide: 1,
	totalPage: 10,
};

function pagination() {
	const { totalPage, curPage, truncate, numberLinkTwoSide: delta } = paginationValue;
}

const range = delta + 4;

const numberTruncateLeft = curPage - delta;
const numberTruncateRight = curPage + delta;

let active = '';
for (let pos = 1; pos <= totalPage; pos++) {
    active = pos == curPage ? 'active' : '';
    if (totalPage >= 2 * range - 1 && truncate) {
        
    } else {
        // not truncate
        render += renderPage(pos, active);
    }
}