import React from 'react'

interface GreeterProps {
  name: string
}

export default function Greeter(props: GreeterProps) {
  const name = props.name
  return (
    <section className="phx-hero">
      <h1>Welcome to {name} with TypeScript and React!</h1>
      <p>Peace-of-mind from prototype to production</p>
    </section>
  )
}
