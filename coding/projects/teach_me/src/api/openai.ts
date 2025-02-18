import OpenAI from "openai";

type Message = {
    /* role: 'user' | 'assistant' */
    role: 'user' | 'system'
    content: string
}

const openai = new OpenAI({
    apiKey: '',
    dangerouslyAllowBrowser: true
})

export async function sendMessage(messages: Message[]) {
    const completion = await openai.chat.completions.create({
        model: 'gpt-3.5-turbo',
        messages
    })

    return {
        role: completion.choices[0].message.role,
        content: completion.choices[0].message.content
    }

}