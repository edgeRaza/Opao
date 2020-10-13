.class public Lcom/tencent/open/TDialog;
.super Lcom/tencent/open/b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/TDialog$1;,
        Lcom/tencent/open/TDialog$FbWebViewClient;,
        Lcom/tencent/open/TDialog$JsListener;,
        Lcom/tencent/open/TDialog$OnTimeListener;,
        Lcom/tencent/open/TDialog$THandler;
    }
.end annotation


# static fields
.field static final c:Landroid/widget/FrameLayout$LayoutParams;

.field static d:Landroid/widget/Toast;

.field private static f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lcom/tencent/open/TDialog$OnTimeListener;

.field private i:Lcom/tencent/tauth/IUiListener;

.field private j:Landroid/widget/FrameLayout;

.field private k:Lcom/tencent/open/c/b;

.field private l:Landroid/os/Handler;

.field private m:Z

.field private n:Lcom/tencent/connect/auth/QQToken;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/tencent/open/TDialog;->c:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    const v8, 0x1030010

    invoke-direct {v6, v7, v8}, Lcom/tencent/open/b;-><init>(Landroid/content/Context;I)V

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/tencent/open/TDialog;->m:Z

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/tencent/open/TDialog;->n:Lcom/tencent/connect/auth/QQToken;

    move-object v6, v0

    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, v6, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/tencent/open/TDialog;->g:Ljava/lang/String;

    move-object v6, v0

    new-instance v7, Lcom/tencent/open/TDialog$OnTimeListener;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v5

    invoke-virtual {v12}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v12

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/tencent/open/TDialog$OnTimeListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    iput-object v7, v6, Lcom/tencent/open/TDialog;->h:Lcom/tencent/open/TDialog$OnTimeListener;

    move-object v6, v0

    new-instance v7, Lcom/tencent/open/TDialog$THandler;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/open/TDialog;->h:Lcom/tencent/open/TDialog$OnTimeListener;

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/tencent/open/TDialog$THandler;-><init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$OnTimeListener;Landroid/os/Looper;)V

    iput-object v7, v6, Lcom/tencent/open/TDialog;->l:Landroid/os/Handler;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/tencent/open/TDialog;->i:Lcom/tencent/tauth/IUiListener;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/tencent/open/TDialog;->n:Lcom/tencent/connect/auth/QQToken;

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    return-object v0
.end method

.method private a()V
    .locals 8

    move-object v0, p0

    new-instance v3, Landroid/widget/TextView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v1, v3

    move-object v3, v1

    const-string v4, "test"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v2, v3

    move-object v3, v0

    new-instance v4, Lcom/tencent/open/c/b;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/tencent/open/c/b;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/open/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v3, v0

    new-instance v4, Landroid/widget/FrameLayout;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/tencent/open/TDialog;->j:Landroid/widget/FrameLayout;

    move-object v3, v2

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/TDialog;->j:Landroid/widget/FrameLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/TDialog;->j:Landroid/widget/FrameLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/TDialog;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lcom/tencent/open/TDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/tencent/open/TDialog;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/open/TDialog;)Landroid/os/Handler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/TDialog;->l:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method private b()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setVerticalScrollBarEnabled(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setHorizontalScrollBarEnabled(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    new-instance v3, Lcom/tencent/open/TDialog$FbWebViewClient;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/tencent/open/TDialog$FbWebViewClient;-><init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$1;)V

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/TDialog;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v2}, Lcom/tencent/open/c/b;->clearFormData()V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v2}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    move-object v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    move-object v2, v1

    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "databases"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    :cond_1
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->a:Lcom/tencent/open/a;

    new-instance v3, Lcom/tencent/open/TDialog$JsListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/tencent/open/TDialog$JsListener;-><init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$1;)V

    const-string v4, "sdk_js_if"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/open/a;->a(Lcom/tencent/open/a$b;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/TDialog;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->loadUrl(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    sget-object v3, Lcom/tencent/open/TDialog;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setVisibility(I)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v2}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    goto/16 :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/tencent/open/TDialog;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/TDialog;->h:Lcom/tencent/open/TDialog$OnTimeListener;

    move-object v0, v1

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    move-object v5, v2

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move v5, v3

    if-nez v5, :cond_2

    sget-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    if-nez v5, :cond_1

    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    sput-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    :goto_0
    sget-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    sget-object v6, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    :try_start_1
    sget-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    if-nez v5, :cond_3

    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    sput-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    :goto_2
    sget-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    sget-object v6, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/tencent/open/TDialog;->d:Landroid/widget/Toast;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic d(Lcom/tencent/open/TDialog;)Lcom/tencent/open/c/b;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    move-object v0, v1

    return-object v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v1

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    const-string v7, "action"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    move-object v6, v2

    const-string v7, "msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    sget-object v6, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    :cond_2
    new-instance v6, Landroid/app/ProgressDialog;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object v5, v6

    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    move-object v6, v5

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    sget-object v6, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProgressDialog;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v6, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1

    :cond_5
    move v6, v3

    if-nez v6, :cond_3

    sget-object v6, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    sget-object v6, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v6, 0x0

    sput-object v6, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v2, v6

    move-object v6, v2

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const-string v3, "openSDK_LOG.TDialog"

    const-string v4, "--onConsoleMessage--"

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/tencent/open/TDialog;->a:Lcom/tencent/open/a;

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/tencent/open/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/TDialog;->h:Lcom/tencent/open/TDialog$OnTimeListener;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/TDialog;->h:Lcom/tencent/open/TDialog$OnTimeListener;

    invoke-virtual {v1}, Lcom/tencent/open/TDialog$OnTimeListener;->onCancel()V

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lcom/tencent/open/b;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/open/TDialog;->requestWindowFeature(I)Z

    move-result v2

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/tencent/open/b;->onCreate(Landroid/os/Bundle;)V

    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/open/TDialog;->a()V

    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/open/TDialog;->b()V

    return-void
.end method
