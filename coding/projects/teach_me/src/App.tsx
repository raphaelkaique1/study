import { useState } from "react";
import { ItemSuggestion } from "./components/ItemSuggestion";
import { getHistoric, setHistoric } from "./storage/historic";

type ProgressType = 'pending' | 'started' | 'done';

function App() {
    const [progress, setProgress] = useState<ProgressType>('pending');
    const [textArea, setTextArea] = useState<string>('');
    const [chat, setChat] = useState<string[]>([]);

    function handleSubmitChat() {
        if(!textArea) {return};

        const message = textArea;
        setTextArea('');

        if(progress === 'pending') {
            setHistoric(message);
            setChat(text => [...text, message]);
            setChat(text => [...text, 'question']);

            setProgress('started');
            return;
        }

        setChat(text => [...text, message]);
        setChat(text => [...text, 'feedback']);

        setProgress('done');
    }
    
    function resetChat() {
        setProgress('pending');
        setChat([]);
    }

    let Start = () => {
        return (
        <section className="content">
            <span>Olá, eu sou o</span>
            <h1>teach<span className="pinkText">.me</span></h1>
            <p>Estou aqui para te ajudar nos seus estudos.</p>
            <p>Selecione um dos tópicos sugeridos ao lado ou digite um tópico que deseja estudar para começarmos.</p>
        </section>
    )}

    let Started = () => {return (<>
    <section className="chat">
    {
        chat[0] && (<h1>Você está estudando sobre <span className="pinkText">{chat[0] /*&lt;/&gt;*/}</span></h1>)
    }
    {
        chat[1] && (
        <div className="question">
            <h2>Pergunta</h2>
            <p>
                {chat[1]}
            </p>
        </div>
        )
    }
    
    {
        chat[2] && (
        <div className="answer">
            <h2>Sua resposta</h2>
            <p>
                {chat[2]}
            </p>
        </div>
        )
    }

    {
        chat[3] && (
        <div className="feedback">
            <h2>Feedback teach<span className="pinkText">.me</span></h2>
            <p>
                {chat[3]}
            </p>
            <div>
                <button type="reset" onClick={resetChat}>Estudar novo tópico</button>
            </div>
        </div>
        )
    }

    </section>
    </>)}

  return (
    <main>
        <aside>
            <details open>
                <summary>Tópicos sugeridos</summary>
                <ItemSuggestion title="HTML" onClick={() => progress !== 'started' ? setTextArea("HTML") : false}/>
                <ItemSuggestion title="CSS" onClick={() => progress !== 'started' ? setTextArea("CSS") : false}/>
                <ItemSuggestion title="JS" onClick={() => progress !== 'started' ? setTextArea("JS") : false}/>
                <ItemSuggestion title="TS" onClick={() => progress !== 'started' ? setTextArea("TS") : false}/>
            </details>
            <details open>
                <summary>Histórico</summary>
                {
                    getHistoric().map(item => (

                        <ItemSuggestion title={item} onClick={() => progress !== 'started' ? setTextArea(item) : false}/>
                    ))
                }
            </details>
        </aside>
        <section>

        {progress === 'pending' ? Start() : Started()}

    {
        progress !== 'done' && (
        <div id="prompt">
            <textarea value={textArea}  onChange={element => setTextArea(element.target.value)} itemType="text" name="text" id="text" placeholder={progress === 'started' ? "Insira sua resposta..." : "Insira o tema que deseja estudar..."} wrap="soft" spellCheck="true"/>
            <button type="submit" onClick={handleSubmitChat}>enviar</button>
        </div>
        )
    }

            <footer>
                <p>teach<span className="pinkText">.me</span></p>
            </footer>
        </section>
    </main>
  )
}

export default App