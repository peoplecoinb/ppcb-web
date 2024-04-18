/*! For license information please see 737.bundle.js.LICENSE.txt */
"use strict";(self.webpackChunkweb=self.webpackChunkweb||[]).push([[737],{6118:(t,e,s)=>{s.d(e,{SIWEController:()=>a});var i=s(1171);s(5011);var n=s(4707),r=s(9073);const o=(0,r.BX)({status:"uninitialized"}),a={state:o,subscribeKey:(t,e)=>(0,n.u$)(o,t,e),subscribe:t=>(0,r.B1)(o,(()=>t(o))),_getClient(){if(!o._client)throw new Error("SIWEController client not set");return o._client},async getNonce(t){const e=this._getClient(),s=await e.getNonce(t);return this.setNonce(s),s},async getSession(){const t=this._getClient(),e=await t.getSession();return e&&(this.setSession(e),this.setStatus("success")),e},createMessage(t){const e=this._getClient().createMessage(t);return this.setMessage(e),e},async verifyMessage(t){const e=this._getClient();return await e.verifyMessage(t)},async signIn(){const t=this._getClient();return await t.signIn()},async signOut(){const t=this._getClient();await t.signOut(),this.setStatus("ready"),t.onSignOut?.()},onSignIn(t){const e=this._getClient();e.onSignIn?.(t)},onSignOut(){const t=this._getClient();t.onSignOut?.()},setSIWEClient(t){o._client=(0,r.KR)(t),o.status="ready",i.OptionsController.setIsSiweEnabled(t.options.enabled)},setNonce(t){o.nonce=t},setStatus(t){o.status=t},setMessage(t){o.message=t},setSession(t){o.session=t}};var l=s(5612);const h=globalThis,c=h.ShadowRoot&&(void 0===h.ShadyCSS||h.ShadyCSS.nativeShadow)&&"adoptedStyleSheets"in Document.prototype&&"replace"in CSSStyleSheet.prototype,d=Symbol(),u=new WeakMap;class p{constructor(t,e,s){if(this._$cssResult$=!0,s!==d)throw Error("CSSResult is not constructable. Use `unsafeCSS` or `css` instead.");this.cssText=t,this.t=e}get styleSheet(){let t=this.o;const e=this.t;if(c&&void 0===t){const s=void 0!==e&&1===e.length;s&&(t=u.get(e)),void 0===t&&((this.o=t=new CSSStyleSheet).replaceSync(this.cssText),s&&u.set(e,t))}return t}toString(){return this.cssText}}const g=(t,e)=>{if(c)t.adoptedStyleSheets=e.map((t=>t instanceof CSSStyleSheet?t:t.styleSheet));else for(const s of e){const e=document.createElement("style"),i=h.litNonce;void 0!==i&&e.setAttribute("nonce",i),e.textContent=s.cssText,t.appendChild(e)}},$=c?t=>t:t=>t instanceof CSSStyleSheet?(t=>{let e="";for(const s of t.cssRules)e+=s.cssText;return(t=>new p("string"==typeof t?t:t+"",void 0,d))(e)})(t):t,{is:_,defineProperty:f,getOwnPropertyDescriptor:y,getOwnPropertyNames:m,getOwnPropertySymbols:A,getPrototypeOf:v}=Object,S=globalThis,w=S.trustedTypes,b=w?w.emptyScript:"",E=S.reactiveElementPolyfillSupport,C=(t,e)=>t,x={toAttribute(t,e){switch(e){case Boolean:t=t?b:null;break;case Object:case Array:t=null==t?t:JSON.stringify(t)}return t},fromAttribute(t,e){let s=t;switch(e){case Boolean:s=null!==t;break;case Number:s=null===t?null:Number(t);break;case Object:case Array:try{s=JSON.parse(t)}catch(t){s=null}}return s}},P=(t,e)=>!_(t,e),U={attribute:!0,type:String,converter:x,reflect:!1,hasChanged:P};Symbol.metadata??=Symbol("metadata"),S.litPropertyMetadata??=new WeakMap;class O extends HTMLElement{static addInitializer(t){this._$Ei(),(this.l??=[]).push(t)}static get observedAttributes(){return this.finalize(),this._$Eh&&[...this._$Eh.keys()]}static createProperty(t,e=U){if(e.state&&(e.attribute=!1),this._$Ei(),this.elementProperties.set(t,e),!e.noAccessor){const s=Symbol(),i=this.getPropertyDescriptor(t,s,e);void 0!==i&&f(this.prototype,t,i)}}static getPropertyDescriptor(t,e,s){const{get:i,set:n}=y(this.prototype,t)??{get(){return this[e]},set(t){this[e]=t}};return{get(){return i?.call(this)},set(e){const r=i?.call(this);n.call(this,e),this.requestUpdate(t,r,s)},configurable:!0,enumerable:!0}}static getPropertyOptions(t){return this.elementProperties.get(t)??U}static _$Ei(){if(this.hasOwnProperty(C("elementProperties")))return;const t=v(this);t.finalize(),void 0!==t.l&&(this.l=[...t.l]),this.elementProperties=new Map(t.elementProperties)}static finalize(){if(this.hasOwnProperty(C("finalized")))return;if(this.finalized=!0,this._$Ei(),this.hasOwnProperty(C("properties"))){const t=this.properties,e=[...m(t),...A(t)];for(const s of e)this.createProperty(s,t[s])}const t=this[Symbol.metadata];if(null!==t){const e=litPropertyMetadata.get(t);if(void 0!==e)for(const[t,s]of e)this.elementProperties.set(t,s)}this._$Eh=new Map;for(const[t,e]of this.elementProperties){const s=this._$Eu(t,e);void 0!==s&&this._$Eh.set(s,t)}this.elementStyles=this.finalizeStyles(this.styles)}static finalizeStyles(t){const e=[];if(Array.isArray(t)){const s=new Set(t.flat(1/0).reverse());for(const t of s)e.unshift($(t))}else void 0!==t&&e.push($(t));return e}static _$Eu(t,e){const s=e.attribute;return!1===s?void 0:"string"==typeof s?s:"string"==typeof t?t.toLowerCase():void 0}constructor(){super(),this._$Ep=void 0,this.isUpdatePending=!1,this.hasUpdated=!1,this._$Em=null,this._$Ev()}_$Ev(){this._$ES=new Promise((t=>this.enableUpdating=t)),this._$AL=new Map,this._$E_(),this.requestUpdate(),this.constructor.l?.forEach((t=>t(this)))}addController(t){(this._$EO??=new Set).add(t),void 0!==this.renderRoot&&this.isConnected&&t.hostConnected?.()}removeController(t){this._$EO?.delete(t)}_$E_(){const t=new Map,e=this.constructor.elementProperties;for(const s of e.keys())this.hasOwnProperty(s)&&(t.set(s,this[s]),delete this[s]);t.size>0&&(this._$Ep=t)}createRenderRoot(){const t=this.shadowRoot??this.attachShadow(this.constructor.shadowRootOptions);return g(t,this.constructor.elementStyles),t}connectedCallback(){this.renderRoot??=this.createRenderRoot(),this.enableUpdating(!0),this._$EO?.forEach((t=>t.hostConnected?.()))}enableUpdating(t){}disconnectedCallback(){this._$EO?.forEach((t=>t.hostDisconnected?.()))}attributeChangedCallback(t,e,s){this._$AK(t,s)}_$EC(t,e){const s=this.constructor.elementProperties.get(t),i=this.constructor._$Eu(t,s);if(void 0!==i&&!0===s.reflect){const n=(void 0!==s.converter?.toAttribute?s.converter:x).toAttribute(e,s.type);this._$Em=t,null==n?this.removeAttribute(i):this.setAttribute(i,n),this._$Em=null}}_$AK(t,e){const s=this.constructor,i=s._$Eh.get(t);if(void 0!==i&&this._$Em!==i){const t=s.getPropertyOptions(i),n="function"==typeof t.converter?{fromAttribute:t.converter}:void 0!==t.converter?.fromAttribute?t.converter:x;this._$Em=i,this[i]=n.fromAttribute(e,t.type),this._$Em=null}}requestUpdate(t,e,s){if(void 0!==t){if(s??=this.constructor.getPropertyOptions(t),!(s.hasChanged??P)(this[t],e))return;this.P(t,e,s)}!1===this.isUpdatePending&&(this._$ES=this._$ET())}P(t,e,s){this._$AL.has(t)||this._$AL.set(t,e),!0===s.reflect&&this._$Em!==t&&(this._$Ej??=new Set).add(t)}async _$ET(){this.isUpdatePending=!0;try{await this._$ES}catch(t){Promise.reject(t)}const t=this.scheduleUpdate();return null!=t&&await t,!this.isUpdatePending}scheduleUpdate(){return this.performUpdate()}performUpdate(){if(!this.isUpdatePending)return;if(!this.hasUpdated){if(this.renderRoot??=this.createRenderRoot(),this._$Ep){for(const[t,e]of this._$Ep)this[t]=e;this._$Ep=void 0}const t=this.constructor.elementProperties;if(t.size>0)for(const[e,s]of t)!0!==s.wrapped||this._$AL.has(e)||void 0===this[e]||this.P(e,this[e],s)}let t=!1;const e=this._$AL;try{t=this.shouldUpdate(e),t?(this.willUpdate(e),this._$EO?.forEach((t=>t.hostUpdate?.())),this.update(e)):this._$EU()}catch(e){throw t=!1,this._$EU(),e}t&&this._$AE(e)}willUpdate(t){}_$AE(t){this._$EO?.forEach((t=>t.hostUpdated?.())),this.hasUpdated||(this.hasUpdated=!0,this.firstUpdated(t)),this.updated(t)}_$EU(){this._$AL=new Map,this.isUpdatePending=!1}get updateComplete(){return this.getUpdateComplete()}getUpdateComplete(){return this._$ES}shouldUpdate(t){return!0}update(t){this._$Ej&&=this._$Ej.forEach((t=>this._$EC(t,this[t]))),this._$EU()}updated(t){}firstUpdated(t){}}O.elementStyles=[],O.shadowRootOptions={mode:"open"},O[C("elementProperties")]=new Map,O[C("finalized")]=new Map,E?.({ReactiveElement:O}),(S.reactiveElementVersions??=[]).push("2.0.4");const R=globalThis,N=R.trustedTypes,T=N?N.createPolicy("lit-html",{createHTML:t=>t}):void 0,M="$lit$",H=`lit$${Math.random().toFixed(9).slice(2)}$`,I="?"+H,k=`<${I}>`,j=document,z=()=>j.createComment(""),L=t=>null===t||"object"!=typeof t&&"function"!=typeof t,D=Array.isArray,W="[ \t\n\f\r]",B=/<(?:(!--|\/[^a-zA-Z])|(\/?[a-zA-Z][^>\s]*)|(\/?$))/g,V=/-->/g,q=/>/g,K=RegExp(`>|${W}(?:([^\\s"'>=/]+)(${W}*=${W}*(?:[^ \t\n\f\r"'\`<>=]|("|')|))|$)`,"g"),F=/'/g,G=/"/g,J=/^(?:script|style|textarea|title)$/i,X=t=>(e,...s)=>({_$litType$:t,strings:e,values:s}),Z=X(1),Q=(X(2),Symbol.for("lit-noChange")),Y=Symbol.for("lit-nothing"),tt=new WeakMap,et=j.createTreeWalker(j,129);function st(t,e){if(!Array.isArray(t)||!t.hasOwnProperty("raw"))throw Error("invalid template strings array");return void 0!==T?T.createHTML(e):e}const it=(t,e)=>{const s=t.length-1,i=[];let n,r=2===e?"<svg>":"",o=B;for(let e=0;e<s;e++){const s=t[e];let a,l,h=-1,c=0;for(;c<s.length&&(o.lastIndex=c,l=o.exec(s),null!==l);)c=o.lastIndex,o===B?"!--"===l[1]?o=V:void 0!==l[1]?o=q:void 0!==l[2]?(J.test(l[2])&&(n=RegExp("</"+l[2],"g")),o=K):void 0!==l[3]&&(o=K):o===K?">"===l[0]?(o=n??B,h=-1):void 0===l[1]?h=-2:(h=o.lastIndex-l[2].length,a=l[1],o=void 0===l[3]?K:'"'===l[3]?G:F):o===G||o===F?o=K:o===V||o===q?o=B:(o=K,n=void 0);const d=o===K&&t[e+1].startsWith("/>")?" ":"";r+=o===B?s+k:h>=0?(i.push(a),s.slice(0,h)+M+s.slice(h)+H+d):s+H+(-2===h?e:d)}return[st(t,r+(t[s]||"<?>")+(2===e?"</svg>":"")),i]};class nt{constructor({strings:t,_$litType$:e},s){let i;this.parts=[];let n=0,r=0;const o=t.length-1,a=this.parts,[l,h]=it(t,e);if(this.el=nt.createElement(l,s),et.currentNode=this.el.content,2===e){const t=this.el.content.firstChild;t.replaceWith(...t.childNodes)}for(;null!==(i=et.nextNode())&&a.length<o;){if(1===i.nodeType){if(i.hasAttributes())for(const t of i.getAttributeNames())if(t.endsWith(M)){const e=h[r++],s=i.getAttribute(t).split(H),o=/([.?@])?(.*)/.exec(e);a.push({type:1,index:n,name:o[2],strings:s,ctor:"."===o[1]?ht:"?"===o[1]?ct:"@"===o[1]?dt:lt}),i.removeAttribute(t)}else t.startsWith(H)&&(a.push({type:6,index:n}),i.removeAttribute(t));if(J.test(i.tagName)){const t=i.textContent.split(H),e=t.length-1;if(e>0){i.textContent=N?N.emptyScript:"";for(let s=0;s<e;s++)i.append(t[s],z()),et.nextNode(),a.push({type:2,index:++n});i.append(t[e],z())}}}else if(8===i.nodeType)if(i.data===I)a.push({type:2,index:n});else{let t=-1;for(;-1!==(t=i.data.indexOf(H,t+1));)a.push({type:7,index:n}),t+=H.length-1}n++}}static createElement(t,e){const s=j.createElement("template");return s.innerHTML=t,s}}function rt(t,e,s=t,i){if(e===Q)return e;let n=void 0!==i?s._$Co?.[i]:s._$Cl;const r=L(e)?void 0:e._$litDirective$;return n?.constructor!==r&&(n?._$AO?.(!1),void 0===r?n=void 0:(n=new r(t),n._$AT(t,s,i)),void 0!==i?(s._$Co??=[])[i]=n:s._$Cl=n),void 0!==n&&(e=rt(t,n._$AS(t,e.values),n,i)),e}class ot{constructor(t,e){this._$AV=[],this._$AN=void 0,this._$AD=t,this._$AM=e}get parentNode(){return this._$AM.parentNode}get _$AU(){return this._$AM._$AU}u(t){const{el:{content:e},parts:s}=this._$AD,i=(t?.creationScope??j).importNode(e,!0);et.currentNode=i;let n=et.nextNode(),r=0,o=0,a=s[0];for(;void 0!==a;){if(r===a.index){let e;2===a.type?e=new at(n,n.nextSibling,this,t):1===a.type?e=new a.ctor(n,a.name,a.strings,this,t):6===a.type&&(e=new ut(n,this,t)),this._$AV.push(e),a=s[++o]}r!==a?.index&&(n=et.nextNode(),r++)}return et.currentNode=j,i}p(t){let e=0;for(const s of this._$AV)void 0!==s&&(void 0!==s.strings?(s._$AI(t,s,e),e+=s.strings.length-2):s._$AI(t[e])),e++}}class at{get _$AU(){return this._$AM?._$AU??this._$Cv}constructor(t,e,s,i){this.type=2,this._$AH=Y,this._$AN=void 0,this._$AA=t,this._$AB=e,this._$AM=s,this.options=i,this._$Cv=i?.isConnected??!0}get parentNode(){let t=this._$AA.parentNode;const e=this._$AM;return void 0!==e&&11===t?.nodeType&&(t=e.parentNode),t}get startNode(){return this._$AA}get endNode(){return this._$AB}_$AI(t,e=this){t=rt(this,t,e),L(t)?t===Y||null==t||""===t?(this._$AH!==Y&&this._$AR(),this._$AH=Y):t!==this._$AH&&t!==Q&&this._(t):void 0!==t._$litType$?this.$(t):void 0!==t.nodeType?this.T(t):(t=>D(t)||"function"==typeof t?.[Symbol.iterator])(t)?this.k(t):this._(t)}S(t){return this._$AA.parentNode.insertBefore(t,this._$AB)}T(t){this._$AH!==t&&(this._$AR(),this._$AH=this.S(t))}_(t){this._$AH!==Y&&L(this._$AH)?this._$AA.nextSibling.data=t:this.T(j.createTextNode(t)),this._$AH=t}$(t){const{values:e,_$litType$:s}=t,i="number"==typeof s?this._$AC(t):(void 0===s.el&&(s.el=nt.createElement(st(s.h,s.h[0]),this.options)),s);if(this._$AH?._$AD===i)this._$AH.p(e);else{const t=new ot(i,this),s=t.u(this.options);t.p(e),this.T(s),this._$AH=t}}_$AC(t){let e=tt.get(t.strings);return void 0===e&&tt.set(t.strings,e=new nt(t)),e}k(t){D(this._$AH)||(this._$AH=[],this._$AR());const e=this._$AH;let s,i=0;for(const n of t)i===e.length?e.push(s=new at(this.S(z()),this.S(z()),this,this.options)):s=e[i],s._$AI(n),i++;i<e.length&&(this._$AR(s&&s._$AB.nextSibling,i),e.length=i)}_$AR(t=this._$AA.nextSibling,e){for(this._$AP?.(!1,!0,e);t&&t!==this._$AB;){const e=t.nextSibling;t.remove(),t=e}}setConnected(t){void 0===this._$AM&&(this._$Cv=t,this._$AP?.(t))}}class lt{get tagName(){return this.element.tagName}get _$AU(){return this._$AM._$AU}constructor(t,e,s,i,n){this.type=1,this._$AH=Y,this._$AN=void 0,this.element=t,this.name=e,this._$AM=i,this.options=n,s.length>2||""!==s[0]||""!==s[1]?(this._$AH=Array(s.length-1).fill(new String),this.strings=s):this._$AH=Y}_$AI(t,e=this,s,i){const n=this.strings;let r=!1;if(void 0===n)t=rt(this,t,e,0),r=!L(t)||t!==this._$AH&&t!==Q,r&&(this._$AH=t);else{const i=t;let o,a;for(t=n[0],o=0;o<n.length-1;o++)a=rt(this,i[s+o],e,o),a===Q&&(a=this._$AH[o]),r||=!L(a)||a!==this._$AH[o],a===Y?t=Y:t!==Y&&(t+=(a??"")+n[o+1]),this._$AH[o]=a}r&&!i&&this.j(t)}j(t){t===Y?this.element.removeAttribute(this.name):this.element.setAttribute(this.name,t??"")}}class ht extends lt{constructor(){super(...arguments),this.type=3}j(t){this.element[this.name]=t===Y?void 0:t}}class ct extends lt{constructor(){super(...arguments),this.type=4}j(t){this.element.toggleAttribute(this.name,!!t&&t!==Y)}}class dt extends lt{constructor(t,e,s,i,n){super(t,e,s,i,n),this.type=5}_$AI(t,e=this){if((t=rt(this,t,e,0)??Y)===Q)return;const s=this._$AH,i=t===Y&&s!==Y||t.capture!==s.capture||t.once!==s.once||t.passive!==s.passive,n=t!==Y&&(s===Y||i);i&&this.element.removeEventListener(this.name,this,s),n&&this.element.addEventListener(this.name,this,t),this._$AH=t}handleEvent(t){"function"==typeof this._$AH?this._$AH.call(this.options?.host??this.element,t):this._$AH.handleEvent(t)}}class ut{constructor(t,e,s){this.element=t,this.type=6,this._$AN=void 0,this._$AM=e,this.options=s}get _$AU(){return this._$AM._$AU}_$AI(t){rt(this,t)}}const pt=R.litHtmlPolyfillSupport;pt?.(nt,at),(R.litHtmlVersions??=[]).push("3.1.3");class gt extends O{constructor(){super(...arguments),this.renderOptions={host:this},this._$Do=void 0}createRenderRoot(){const t=super.createRenderRoot();return this.renderOptions.renderBefore??=t.firstChild,t}update(t){const e=this.render();this.hasUpdated||(this.renderOptions.isConnected=this.isConnected),super.update(t),this._$Do=((t,e,s)=>{const i=s?.renderBefore??e;let n=i._$litPart$;if(void 0===n){const t=s?.renderBefore??null;i._$litPart$=n=new at(e.insertBefore(z(),t),t,void 0,s??{})}return n._$AI(t),n})(e,this.renderRoot,this.renderOptions)}connectedCallback(){super.connectedCallback(),this._$Do?.setConnected(!0)}disconnectedCallback(){super.disconnectedCallback(),this._$Do?.setConnected(!1)}render(){return Q}}gt._$litElement$=!0,gt.finalized=!0,globalThis.litElementHydrateSupport?.({LitElement:gt});const $t=globalThis.litElementPolyfillSupport;$t?.({LitElement:gt}),(globalThis.litElementVersions??=[]).push("4.0.5");const _t=((t,...e)=>{const s=1===t.length?t[0]:e.reduce(((e,s,i)=>e+(t=>{if(!0===t._$cssResult$)return t.cssText;if("number"==typeof t)return t;throw Error("Value passed to 'css' function must be a 'css' function result: "+t+". Use 'unsafeCSS' to pass non-literal values, but take care to ensure page security.")})(s)+t[i+1]),t[0]);return new p(s,t,d)})`
  :host {
    display: flex;
    justify-content: center;
    gap: var(--wui-spacing-2xl);
  }

  wui-visual-thumbnail:nth-child(1) {
    z-index: 1;
  }
`;let ft=class extends gt{constructor(){super(...arguments),this.dappImageUrl=i.OptionsController.state.metadata?.icons,this.walletImageUrl=i.iT.getConnectedWalletImageUrl()}firstUpdated(){const t=this.shadowRoot?.querySelectorAll("wui-visual-thumbnail");t?.[0]&&this.createAnimation(t[0],"translate(18px)"),t?.[1]&&this.createAnimation(t[1],"translate(-18px)")}render(){return Z`
      <wui-visual-thumbnail
        ?borderRadiusFull=${!0}
        .imageSrc=${this.dappImageUrl?.[0]}
      ></wui-visual-thumbnail>
      <wui-visual-thumbnail .imageSrc=${this.walletImageUrl}></wui-visual-thumbnail>
    `}createAnimation(t,e){t.animate([{transform:"translateX(0px)"},{transform:e}],{duration:1600,easing:"cubic-bezier(0.56, 0, 0.48, 1)",direction:"alternate",iterations:1/0})}};ft.styles=_t,ft=function(t,e,s,i){var n,r=arguments.length,o=r<3?e:null===i?i=Object.getOwnPropertyDescriptor(e,s):i;if("object"==typeof Reflect&&"function"==typeof Reflect.decorate)o=Reflect.decorate(t,e,s,i);else for(var a=t.length-1;a>=0;a--)(n=t[a])&&(o=(r<3?n(o):r>3?n(e,s,o):n(e,s))||o);return r>3&&o&&Object.defineProperty(e,s,o),o}([(0,l.customElement)("w3m-connecting-siwe")],ft);const yt={attribute:!0,type:String,converter:x,reflect:!1,hasChanged:P},mt=(t=yt,e,s)=>{const{kind:i,metadata:n}=s;let r=globalThis.litPropertyMetadata.get(n);if(void 0===r&&globalThis.litPropertyMetadata.set(n,r=new Map),r.set(s.name,t),"accessor"===i){const{name:i}=s;return{set(s){const n=e.get.call(this);e.set.call(this,s),this.requestUpdate(i,n,t)},init(e){return void 0!==e&&this.P(i,void 0,t),e}}}if("setter"===i){const{name:i}=s;return function(s){const n=this[i];e.call(this,s),this.requestUpdate(i,n,t)}}throw Error("Unsupported decorator location: "+i)};var At=function(t,e,s,i){var n,r=arguments.length,o=r<3?e:null===i?i=Object.getOwnPropertyDescriptor(e,s):i;if("object"==typeof Reflect&&"function"==typeof Reflect.decorate)o=Reflect.decorate(t,e,s,i);else for(var a=t.length-1;a>=0;a--)(n=t[a])&&(o=(r<3?n(o):r>3?n(e,s,o):n(e,s))||o);return r>3&&o&&Object.defineProperty(e,s,o),o};let vt=class extends gt{constructor(){super(...arguments),this.dappName=i.OptionsController.state.metadata?.name,this.isSigning=!1}render(){return Z`
      <wui-flex justifyContent="center" .padding=${["2xl","0","xxl","0"]}>
        <w3m-connecting-siwe></w3m-connecting-siwe>
      </wui-flex>
      <wui-flex
        .padding=${["0","4xl","l","4xl"]}
        gap="s"
        justifyContent="space-between"
      >
        <wui-text variant="paragraph-500" align="center" color="fg-100"
          >${this.dappName??"Dapp"} needs to connect to your wallet</wui-text
        >
      </wui-flex>
      <wui-flex
        .padding=${["0","3xl","l","3xl"]}
        gap="s"
        justifyContent="space-between"
      >
        <wui-text variant="small-400" align="center" color="fg-200"
          >Sign this message to prove you own this wallet and proceed. Canceling will disconnect
          you.</wui-text
        >
      </wui-flex>
      <wui-flex .padding=${["l","xl","xl","xl"]} gap="s" justifyContent="space-between">
        <wui-button
          size="md"
          ?fullwidth=${!0}
          variant="shade"
          @click=${this.onCancel.bind(this)}
          data-testid="w3m-connecting-siwe-cancel"
        >
          Cancel
        </wui-button>
        <wui-button
          size="md"
          ?fullwidth=${!0}
          variant="fill"
          @click=${this.onSign.bind(this)}
          ?loading=${this.isSigning}
          data-testid="w3m-connecting-siwe-sign"
        >
          ${this.isSigning?"Signing...":"Sign"}
        </wui-button>
      </wui-flex>
    `}async onSign(){this.isSigning=!0,i.En.sendEvent({event:"CLICK_SIGN_SIWE_MESSAGE",type:"track"});try{a.setStatus("loading");const t=await a.signIn();return a.setStatus("success"),i.En.sendEvent({event:"SIWE_AUTH_SUCCESS",type:"track"}),t}catch(t){return i.SnackController.showError("Signature declined"),a.setStatus("error"),i.En.sendEvent({event:"SIWE_AUTH_ERROR",type:"track"})}finally{this.isSigning=!1}}async onCancel(){const{isConnected:t}=i.AccountController.state;t?(await i.ConnectionController.disconnect(),i.W3.close()):i.RouterController.push("Connect"),i.En.sendEvent({event:"CLICK_CANCEL_SIWE",type:"track"})}};At([function(t){return(e,s)=>"object"==typeof s?mt(t,e,s):((t,e,s)=>{const i=e.hasOwnProperty(s);return e.constructor.createProperty(s,i?{...t,wrapped:!0}:t),i?Object.getOwnPropertyDescriptor(e,s):void 0})(t,e,s)}({state:!0,attribute:!1})],vt.prototype,"isSigning",void 0),vt=At([(0,l.customElement)("w3m-connecting-siwe-view")],vt)}}]);