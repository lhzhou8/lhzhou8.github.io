{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ page.title }} | {{ title }}{% endblock %}

{% block class %}post posts-expand{% endblock %}

{% block content %}

  {{ partial('_macro/post.swig', {post: page}) }}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(true) }}
{% endblock %}

<span title="{{ __('post.wordcount') }}">
    {{ wordcount(post.content) }} 字
</span>

<span title="{{ __('post.min2read') }}">
    {{ min2read(post.content) }} 分钟
</span>