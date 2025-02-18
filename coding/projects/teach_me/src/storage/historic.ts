export function getHistoric(): string[] {
    const historic = localStorage.getItem('historics');

    if(historic) {
        return JSON.parse(historic)
    }

    return [];
}

export function setHistoric(item: string) {
    const historic = localStorage.getItem('historics');

    if(historic) {
        const parse = JSON.parse(historic);
        if (parse.length >= 5) {
            parse.shift();
        }
        localStorage.setItem('historics', JSON.stringify([...parse, item]));
        return;
    }

    localStorage.setItem('historics', JSON.stringify([item]));
}