type ItemSuggestionProperties = {
    title: string;
}

export function ItemSuggestion({title}: ItemSuggestionProperties) {

    return (
        <button>{title}</button>
    );
}