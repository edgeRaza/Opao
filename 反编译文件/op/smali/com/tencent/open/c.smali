.class public Lcom/tencent/open/c;
.super Lcom/tencent/open/b;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/open/c/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/c$1;,
        Lcom/tencent/open/c$c;,
        Lcom/tencent/open/c$d;,
        Lcom/tencent/open/c$a;,
        Lcom/tencent/open/c$b;
    }
.end annotation


# static fields
.field static c:Landroid/widget/Toast;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/tauth/IUiListener;

.field private f:Lcom/tencent/open/c$c;

.field private g:Landroid/os/Handler;

.field private h:Lcom/tencent/open/c/a;

.field private i:Lcom/tencent/open/c/b;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

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

    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, v6, Lcom/tencent/open/c;->j:Ljava/lang/ref/WeakReference;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/tencent/open/c;->d:Ljava/lang/String;

    move-object v6, v0

    new-instance v7, Lcom/tencent/open/c$c;

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

    invoke-direct/range {v8 .. v13}, Lcom/tencent/open/c$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    iput-object v7, v6, Lcom/tencent/open/c;->f:Lcom/tencent/open/c$c;

    move-object v6, v0

    new-instance v7, Lcom/tencent/open/c$d;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/open/c;->f:Lcom/tencent/open/c$c;

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/tencent/open/c$d;-><init>(Lcom/tencent/open/c;Lcom/tencent/open/c$c;Landroid/os/Looper;)V

    iput-object v7, v6, Lcom/tencent/open/c;->g:Landroid/os/Handler;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/tencent/open/c;->e:Lcom/tencent/tauth/IUiListener;

    move-object v6, v0

    const/high16 v7, 0x43390000    # 185.0f

    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Lcom/tencent/open/c;->k:I

    const-string v6, "openSDK_LOG.PKDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "density="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; webviewHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/tencent/open/c;->k:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/c;)Ljava/lang/ref/WeakReference;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/c;->j:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/tencent/open/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/open/c;)Lcom/tencent/open/c$c;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/c;->f:Lcom/tencent/open/c$c;

    move-object v0, v1

    return-object v0
.end method

.method private b()V
    .locals 10

    move-object v0, p0

    move-object v2, v0

    new-instance v3, Lcom/tencent/open/c/a;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/c;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/open/c/a;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/tencent/open/c;->h:Lcom/tencent/open/c/a;

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->h:Lcom/tencent/open/c/a;

    const/high16 v3, 0x66000000

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/a;->setBackgroundColor(I)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->h:Lcom/tencent/open/c/a;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v0

    new-instance v3, Lcom/tencent/open/c/b;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/c;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/open/c/b;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setBackgroundColor(I)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    const-class v7, Landroid/graphics/Paint;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    new-instance v7, Landroid/graphics/Paint;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, -0x1

    move-object v5, v0

    iget v5, v5, Lcom/tencent/open/c;->k:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v1, v2

    move-object v2, v1

    const/16 v3, 0xd

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->h:Lcom/tencent/open/c/a;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/a;->addView(Landroid/view/View;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->h:Lcom/tencent/open/c/a;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/a;->a(Lcom/tencent/open/c/a$a;)V

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c;->h:Lcom/tencent/open/c/a;

    invoke-virtual {v2, v3}, Lcom/tencent/open/c;->setContentView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/tencent/open/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/open/c;)Lcom/tencent/open/c/b;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    move-object v0, v1

    return-object v0
.end method

.method private c()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setVerticalScrollBarEnabled(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setHorizontalScrollBarEnabled(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    new-instance v3, Lcom/tencent/open/c$a;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/tencent/open/c$a;-><init>(Lcom/tencent/open/c;Lcom/tencent/open/c$1;)V

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    invoke-virtual {v2}, Lcom/tencent/open/c/b;->clearFormData()V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

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

    iget-object v2, v2, Lcom/tencent/open/c;->j:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c;->j:Ljava/lang/ref/WeakReference;

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

    iget-object v2, v2, Lcom/tencent/open/c;->a:Lcom/tencent/open/a;

    new-instance v3, Lcom/tencent/open/c$b;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/tencent/open/c$b;-><init>(Lcom/tencent/open/c;Lcom/tencent/open/c$1;)V

    const-string v4, "sdk_js_if"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/open/a;->a(Lcom/tencent/open/a$b;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    invoke-virtual {v2}, Lcom/tencent/open/c/b;->clearView()V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/b;->loadUrl(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    invoke-virtual {v2}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    goto/16 :goto_0
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

    sget-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    if-nez v5, :cond_1

    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    sput-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    :goto_0
    sget-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    sget-object v6, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

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
    sget-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    if-nez v5, :cond_3

    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    sput-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    :goto_2
    sget-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    sget-object v6, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/tencent/open/c;->c:Landroid/widget/Toast;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v1

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    const-string v6, "action"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    move-object v5, v2

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v4, v5

    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    :cond_2
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    invoke-virtual {v1}, Lcom/tencent/open/c/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/tencent/open/c;->k:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v1, "openSDK_LOG.PKDialog"

    const-string v2, "onKeyboardHidden keyboard hide"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->j:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/tencent/open/c;->k:I

    if-ge v2, v3, :cond_1

    const/4 v2, 0x2

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    invoke-virtual {v2}, Lcom/tencent/open/c/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move v3, v1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    :goto_0
    const-string v2, "openSDK_LOG.PKDialog"

    const-string v3, "onKeyboardShown keyboard show"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

    invoke-virtual {v2}, Lcom/tencent/open/c/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/tencent/open/c;->k:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const-string v3, "openSDK_LOG.PKDialog"

    const-string v4, "--onConsoleMessage--"

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/tencent/open/c;->a:Lcom/tencent/open/a;

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/c;->i:Lcom/tencent/open/c/b;

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

    invoke-super {v1}, Lcom/tencent/open/b;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/open/c;->requestWindowFeature(I)Z

    move-result v2

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/tencent/open/b;->onCreate(Landroid/os/Bundle;)V

    move-object v2, v0

    invoke-virtual {v2}, Lcom/tencent/open/c;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object v2, v0

    invoke-virtual {v2}, Lcom/tencent/open/c;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/open/c;->b()V

    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/open/c;->c()V

    return-void
.end method
