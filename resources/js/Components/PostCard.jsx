import React from 'react'
import {InertiaLink} from '@inertiajs/inertia-react'

export default function PostCard(props) {
    const {alt, image, name, extract, slug} = props;

    function MyComponent() {
        return <div dangerouslySetInnerHTML={{__html: extract}} />;
    }
    return (
        <div className={`card post-card ${alt ? 'post-card-alt' : ''}`}>
            <div className="image-container">
                <img src={image} alt="Sample"></img>
            </div>
            <div className="card-body px-md-5 pb-md-4 pt-md-5">
                <h3>{name}</h3>

                <MyComponent></MyComponent>
                <div className="custom-card-footer">
                    <InertiaLink href={`/post/${slug}`} className="btn btn-sm btn-custom-light">Read more</InertiaLink>
                </div>
            </div>
        </div>
    );
}
