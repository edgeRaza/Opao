.class public Lcom/tencent/open/c/c;
.super Lcom/tencent/open/c/b;
.source "ProGuard"


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/view/KeyEvent;

.field private c:Lcom/tencent/open/web/security/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/tencent/open/c/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    move-object v0, p0

    move-object v1, p1

    const-string v3, "openSDK_LOG.SecureWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->dispatchKeyEvent, is device support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/tencent/open/c/c;->a:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/tencent/open/c/c;->a:Z

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    :sswitch_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/open/web/security/a;->b:Z

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    :sswitch_1
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    :sswitch_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    if-eqz v3, :cond_4

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    move v2, v3

    move v3, v2

    const/16 v4, 0x21

    if-lt v3, v4, :cond_2

    move v3, v2

    const/16 v4, 0x5f

    if-le v3, v4, :cond_3

    :cond_2
    move v3, v2

    const/16 v4, 0x61

    if-lt v3, v4, :cond_4

    move v3, v2

    const/16 v4, 0x7d

    if-gt v3, v4, :cond_4

    :cond_3
    move-object v3, v0

    new-instance v4, Landroid/view/KeyEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const/16 v7, 0x11

    invoke-direct {v5, v6, v7}, Landroid/view/KeyEvent;-><init>(II)V

    iput-object v4, v3, Lcom/tencent/open/c/c;->b:Landroid/view/KeyEvent;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/c/c;->b:Landroid/view/KeyEvent;

    invoke-super {v3, v4}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    :cond_5
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    const-string v3, "openSDK_LOG.SecureWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->create input connection, is edit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/tencent/open/c/b;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    move-object v2, v3

    const-string v3, "openSDK_LOG.SecureWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->onCreateInputConnection, inputConn is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/open/c/c;->a:Z

    move-object v3, v0

    new-instance v4, Lcom/tencent/open/web/security/a;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Lcom/tencent/open/c/b;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/tencent/open/web/security/a;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v4, v3, Lcom/tencent/open/c/c;->c:Lcom/tencent/open/web/security/a;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c/c;->c:Lcom/tencent/open/web/security/a;

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/tencent/open/c/c;->a:Z

    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    const-string v4, "openSDK_LOG.SecureWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->onKeyDown, is device support: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/tencent/open/c/c;->a:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/tencent/open/c/c;->a:Z

    if-nez v4, :cond_0

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    :sswitch_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/tencent/open/web/security/a;->b:Z

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    :sswitch_1
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    :sswitch_2
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_1
    sget-boolean v4, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    if-eqz v4, :cond_4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    move v3, v4

    move v4, v3

    const/16 v5, 0x21

    if-lt v4, v5, :cond_2

    move v4, v3

    const/16 v5, 0x5f

    if-le v4, v5, :cond_3

    :cond_2
    move v4, v3

    const/16 v5, 0x61

    if-lt v4, v5, :cond_4

    move v4, v3

    const/16 v5, 0x7d

    if-gt v4, v5, :cond_4

    :cond_3
    move-object v4, v0

    new-instance v5, Landroid/view/KeyEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const/16 v8, 0x11

    invoke-direct {v6, v7, v8}, Landroid/view/KeyEvent;-><init>(II)V

    iput-object v5, v4, Lcom/tencent/open/c/c;->b:Landroid/view/KeyEvent;

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/c/c;->b:Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/c/c;->b:Landroid/view/KeyEvent;

    invoke-super {v4, v5, v6}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_4
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto/16 :goto_0

    :cond_5
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_0
    .end sparse-switch
.end method
