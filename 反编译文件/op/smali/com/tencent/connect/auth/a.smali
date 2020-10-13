.class public Lcom/tencent/connect/auth/a;
.super Landroid/app/Dialog;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/a$d;,
        Lcom/tencent/connect/auth/a$a;,
        Lcom/tencent/connect/auth/a$b;,
        Lcom/tencent/connect/auth/a$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/connect/auth/a$b;

.field private c:Lcom/tencent/tauth/IUiListener;

.field private d:Landroid/os/Handler;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/ProgressBar;

.field private i:Ljava/lang/String;

.field private j:Lcom/tencent/open/c/c;

.field private k:Landroid/content/Context;

.field private l:Lcom/tencent/open/web/security/b;

.field private m:Z

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:J

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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

    invoke-direct {v6, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/tencent/connect/auth/a;->m:Z

    move-object v6, v0

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lcom/tencent/connect/auth/a;->q:J

    move-object v6, v0

    const-wide/16 v7, 0x7530

    iput-wide v7, v6, Lcom/tencent/connect/auth/a;->r:J

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    move-object v6, v0

    new-instance v7, Lcom/tencent/connect/auth/a$b;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v5

    invoke-virtual {v12}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v12

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/tencent/connect/auth/a$b;-><init>(Lcom/tencent/connect/auth/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    iput-object v7, v6, Lcom/tencent/connect/auth/a;->b:Lcom/tencent/connect/auth/a$b;

    move-object v6, v0

    new-instance v7, Lcom/tencent/connect/auth/a$c;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/connect/auth/a;->b:Lcom/tencent/connect/auth/a$b;

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/tencent/connect/auth/a$c;-><init>(Lcom/tencent/connect/auth/a;Lcom/tencent/connect/auth/a$b;Landroid/os/Looper;)V

    iput-object v7, v6, Lcom/tencent/connect/auth/a;->d:Landroid/os/Handler;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/tencent/connect/auth/a;->c:Lcom/tencent/tauth/IUiListener;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/tencent/connect/auth/a;->i:Ljava/lang/String;

    move-object v6, v0

    new-instance v7, Lcom/tencent/open/web/security/b;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Lcom/tencent/open/web/security/b;-><init>()V

    iput-object v7, v6, Lcom/tencent/connect/auth/a;->l:Lcom/tencent/open/web/security/b;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/tencent/connect/auth/a;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/auth/a;J)J
    .locals 11

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    move-object v8, v3

    move-wide v9, v4

    move-wide v3, v9

    move-object v5, v8

    move-wide v6, v9

    iput-wide v6, v5, Lcom/tencent/connect/auth/a;->q:J

    move-wide v0, v3

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/a;)Landroid/content/Context;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    const-string v3, "openSDK_LOG.AuthDialog"

    const-string v4, "-->generateDownloadUrl, url: http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/a;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iget-object v4, v4, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/tencent/connect/auth/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/a;->p:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/a;->p:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/a;->p:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a;->p:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v2

    const-string v5, "_u_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/tencent/connect/auth/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/auth/a;Z)Z
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/tencent/connect/auth/a;->m:Z

    move v0, v2

    return v0
.end method

.method static synthetic b(Lcom/tencent/connect/auth/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/tencent/connect/auth/a;->p:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method private b()V
    .locals 7

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/connect/auth/a;->c()V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v1, v2

    move-object v2, v0

    new-instance v3, Lcom/tencent/open/c/c;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/open/c/c;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/open/c/c;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v0

    new-instance v3, Landroid/widget/FrameLayout;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/tencent/connect/auth/a;->e:Landroid/widget/FrameLayout;

    move-object v2, v1

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->e:Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->e:Landroid/widget/FrameLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->e:Landroid/widget/FrameLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/tencent/connect/auth/a;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    move-object v6, v2

    const-string v7, "msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v4

    move v8, v3

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    move-object v2, v6

    move-object v6, v2

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/connect/auth/a;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/tencent/connect/auth/a;->e()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic c(Lcom/tencent/connect/auth/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/tencent/connect/auth/a;->o:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method private c()V
    .locals 10

    move-object v0, p0

    move-object v5, v0

    new-instance v6, Landroid/widget/ProgressBar;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/tencent/connect/auth/a;->h:Landroid/widget/ProgressBar;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v1, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a;->h:Landroid/widget/ProgressBar;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v5, v0

    new-instance v6, Landroid/widget/LinearLayout;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/tencent/connect/auth/a;->f:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    move-object v2, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a;->i:Ljava/lang/String;

    const-string v6, "action_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v5

    move-object v5, v3

    const/16 v6, 0x10

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object v5, v3

    const/4 v6, 0x5

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    new-instance v5, Landroid/widget/TextView;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v2, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    const-string v6, "zh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    const-string v6, "\u767b\u5f55\u4e2d..."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v5, v2

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v5, v2

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v3, v5

    move-object v5, v3

    const/16 v6, 0x11

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a;->f:Landroid/widget/LinearLayout;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a;->f:Landroid/widget/LinearLayout;

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/a;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a;->f:Landroid/widget/LinearLayout;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    move-object v5, v0

    new-instance v6, Landroid/widget/FrameLayout;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v4, v5

    move-object v5, v4

    const/16 v6, 0x50

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object v5, v4

    const/16 v6, 0x50

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move-object v5, v4

    const/16 v6, 0x28

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object v5, v4

    const/16 v6, 0x28

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move-object v5, v4

    const/16 v6, 0x11

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    const/high16 v6, 0x1080000

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    move-object v5, v2

    const-string v6, "Logging in..."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/tencent/connect/auth/a;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/tencent/connect/auth/a;->m:Z

    move v0, v1

    return v0
.end method

.method static synthetic d(Lcom/tencent/connect/auth/a;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method private d()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/c;->setVerticalScrollBarEnabled(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/c;->setHorizontalScrollBarEnabled(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    new-instance v3, Lcom/tencent/connect/auth/a$a;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/tencent/connect/auth/a$a;-><init>(Lcom/tencent/connect/auth/a;Lcom/tencent/connect/auth/a$1;)V

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    new-instance v3, Landroid/webkit/WebChromeClient;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v2}, Lcom/tencent/open/c/c;->clearFormData()V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v2}, Lcom/tencent/open/c/c;->clearSslPreferences()V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    new-instance v3, Lcom/tencent/connect/auth/a$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/tencent/connect/auth/a$1;-><init>(Lcom/tencent/connect/auth/a;)V

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    new-instance v3, Lcom/tencent/connect/auth/a$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/tencent/connect/auth/a$2;-><init>(Lcom/tencent/connect/auth/a;)V

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/c;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v2}, Lcom/tencent/open/c/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v1, v2

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

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    const-string v4, "databases"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const-string v2, "openSDK_LOG.AuthDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->mUrl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/connect/auth/a;->o:Ljava/lang/String;

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/tencent/open/c/c;->setVisibility(I)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v2}, Lcom/tencent/open/c/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a;->l:Lcom/tencent/open/web/security/b;

    new-instance v3, Lcom/tencent/open/web/security/SecureJsInterface;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/tencent/open/web/security/SecureJsInterface;-><init>()V

    const-string v4, "SecureJsInterface"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/open/web/security/b;->a(Lcom/tencent/open/a$b;Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    move-object v2, v0

    new-instance v3, Lcom/tencent/connect/auth/a$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/tencent/connect/auth/a$3;-><init>(Lcom/tencent/connect/auth/a;)V

    invoke-super {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/c/c;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    move-object v0, v1

    return-object v0
.end method

.method private e()Z
    .locals 12

    move-object v0, p0

    invoke-static {}, Lcom/tencent/connect/auth/b;->a()Lcom/tencent/connect/auth/b;

    move-result-object v7

    move-object v1, v7

    move-object v7, v1

    invoke-virtual {v7}, Lcom/tencent/connect/auth/b;->c()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    new-instance v7, Lcom/tencent/connect/auth/b$a;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lcom/tencent/connect/auth/b$a;-><init>()V

    move-object v3, v7

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/a;->c:Lcom/tencent/tauth/IUiListener;

    iput-object v8, v7, Lcom/tencent/connect/auth/b$a;->a:Lcom/tencent/tauth/IUiListener;

    move-object v7, v3

    move-object v8, v0

    iput-object v8, v7, Lcom/tencent/connect/auth/b$a;->b:Lcom/tencent/connect/auth/a;

    move-object v7, v3

    move-object v8, v2

    iput-object v8, v7, Lcom/tencent/connect/auth/b$a;->c:Ljava/lang/String;

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/tencent/connect/auth/b;->a(Lcom/tencent/connect/auth/b$a;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/open/utils/k;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    const-string v8, "token_key"

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    const-string v8, "serial"

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    const-string v8, "browser"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-static {v9}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    move v0, v7

    return v0
.end method

.method static synthetic f(Lcom/tencent/connect/auth/a;)Lcom/tencent/connect/auth/a$b;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->b:Lcom/tencent/connect/auth/a$b;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/connect/auth/a;)Landroid/widget/FrameLayout;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/web/security/b;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->l:Lcom/tencent/open/web/security/b;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/connect/auth/a;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->o:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/connect/auth/a;)J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/tencent/connect/auth/a;->q:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic k(Lcom/tencent/connect/auth/a;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/tencent/connect/auth/a;->n:I

    move v0, v1

    return v0
.end method

.method static synthetic l(Lcom/tencent/connect/auth/a;)J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/tencent/connect/auth/a;->r:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic m(Lcom/tencent/connect/auth/a;)I
    .locals 7

    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/tencent/connect/auth/a;->n:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/tencent/connect/auth/a;->n:I

    move v0, v1

    return v0
.end method

.method static synthetic n(Lcom/tencent/connect/auth/a;)Landroid/os/Handler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->d:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/connect/auth/a;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/tencent/connect/auth/a;->a()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/connect/auth/a;)Ljava/util/HashMap;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->s:Ljava/util/HashMap;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");void("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public dismiss()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->s:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move-object v1, v0

    invoke-virtual {v1}, Lcom/tencent/connect/auth/a;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v1}, Lcom/tencent/open/c/c;->destroy()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/c;

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/tencent/connect/auth/a;->m:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a;->b:Lcom/tencent/connect/auth/a$b;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/a$b;->onCancel()V

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/connect/auth/a;->requestWindowFeature(I)Z

    move-result v2

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/connect/auth/a;->b()V

    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/connect/auth/a;->d()V

    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/tencent/connect/auth/a;->s:Ljava/util/HashMap;

    return-void
.end method

.method protected onStop()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
