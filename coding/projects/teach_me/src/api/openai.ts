import OpenAI from "openai";

type Message = {
    /* role: 'user' | 'assistant' */
    role: 'user' | 'system'
    content: string
}

const openai = new OpenAI({
    apiKey: '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',
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