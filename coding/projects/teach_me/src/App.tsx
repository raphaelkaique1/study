import { useState } from "react";
import { ItemSuggestion } from "./components/ItemSuggestion"


type ProgressType = 'pending' | 'started' | 'done';

function App() {
    const [progress, setProgress] = useState<ProgressType>('pending');

    function handleSubmitChat() {
        progress === 'pending' ? setProgress('started') : setProgress('done');
    }

    function handleNewTopic() {
        window.location.reload();
    }

    let Start = () => {
        return (<>
        <section className="content">
            <span>Olá, eu sou o</span>
            <h1>teach<span className="pinkText">.me</span></h1>
            <p>Estou aqui para te ajudar nos seus estudos.</p>
            <p>Selecione um dos tópicos sugeridos ao lado ou digite um tópico que deseja estudar para começarmos.</p>
        </section>
        <form name="prompt"> {/*action="#" method="post"*/}
            <textarea type="text" name="topic" id="topic" placeholder="Insira o tema que deseja estudar..." wrap="soft" spellcheck="true"></textarea>
            <button type="submit" onClick={handleSubmitChat}>enviar</button>
        </form>
      </>)}

    let Started = () => {return (<>
    <section className="chat">
    <h1>Você está estudando sobre <span className="pinkText">&lt;/&gt;</span></h1>
        <div className="question">
            <h2>Pergunta</h2>
            <p>
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quasi voluptas non praesentium nemo, nihil consequuntur sapiente debitis numquam explicabo minus eum nisi repellendus doloribus exercitationem ipsam architecto? Expedita, quidem placeat.
            </p>
        </div>
        <div className="answer">
            <h2>Sua resposta</h2>
            <p>
                Lorem, ipsum dolor sit amet consectetur adipisicing elit.
            </p>
        </div>
        <div className="feedback">
            <h2>Feedback teach<span className="pinkText">.me</span></h2>
            <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique eum, voluptates pariatur voluptatum accusamus, temporibus nisi impedit porro sequi asperiores facere ullam perferendis quo itaque placeat molestias amet officiis harum!
            </p>
            <div>
                <button type="reset" onClick={handleNewTopic}>Estudar novo tópico</button>
            </div>
        </div>
    </section>
    </>)}

  return (
    <main>
        <aside>
            <details open>
                <summary>Tópicos sugeridos</summary>
                <ItemSuggestion title="HTML"/>
                <ItemSuggestion title="CSS"/>
                <ItemSuggestion title="JS"/>
                <ItemSuggestion title="TS"/>
            </details>
            <details open>
                <summary>Histórico</summary>
                <ItemSuggestion title="Py"/>
                <ItemSuggestion title="JAVA"/>
                <ItemSuggestion title="PHP"/>
                <ItemSuggestion title="GO"/>
            </details>
        </aside>
        <section>

        {progress === 'pending' ? Start() : Started()}

            <footer>
                <p>teach<span className="pinkText">.me</span></p>
            </footer>
        </section>
    </main>
  )
}

export default App