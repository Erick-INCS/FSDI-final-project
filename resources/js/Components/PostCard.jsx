import React from 'react'
import {InertiaLink} from '@inertiajs/inertia-react'

export default function PostCard(props) {
    const {alt, image, name, extract, slug} = props;
    return (
        <div className={`card post-card ${alt ? 'post-card-alt' : ''}`}>
        <img src={image} alt="Sample"></img>
        <div className="card-body p-md-5">
            <h3>{name}</h3>

            <p>{extract} ...</p>
            <div className="custom-card-footer">
                <InertiaLink href={`/post/${slug}`} className="btn btn-sm btn-custom-light">Read more</InertiaLink>
            </div>
        </div>
    </div>
    )
}
