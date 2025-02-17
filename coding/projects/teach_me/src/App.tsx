function App() {
  return (
    <main>
        <aside>
            <details open>
                <summary>Tópicos sugeridos</summary>
                <button>HTML</button>
                <button>CSS</button>
                <button>JS</button>
                <button>TS</button>
            </details>
            <details open>
                <summary>Histórico</summary>
                <button>Py</button>
                <button>JAVA</button>
                <button>PHP</button>
                <button>GO</button>
            </details>
        </aside>

        <section>
            {/*<section className="content">
                <span>Olá, eu sou o</span>
                <h1>teach<span className="pinkText">.me</span></h1>
                <p>Estou aqui para te ajudar nos seus estudos.</p>
                <p>Selecione um dos tópicos sugeridos ao lado ou digite um tópico que deseja estudar para começarmos.</p>
            </section>
            <form name="prompt" action="" method="post">
                <textarea type="text" name="topic" id="topic" placeholder="Insira o tema que deseja estudar..." wrap="soft" spellcheck="true"></textarea>
                <button type="submit">enviar</button>
            </form>*/}
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
                        <button>Estudar novo tópico</button>
                    </div>
                </div>
            </section>
            <footer>
                <p>teach<span className="pinkText">.me</span></p>
            </footer>
        </section>
    </main>
  )
}

export default App
