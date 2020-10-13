.class public Lcom/a/a/b/n;
.super Landroid/os/AsyncTask;


# static fields
.field private static c:I


# instance fields
.field protected final a:Lcom/a/a/b/e;

.field private b:Landroid/app/ProgressDialog;

.field private d:Lcom/androlua/LuaEditor;

.field private e:Ljava/io/File;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaEditor;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/a/a/b/n;->e:Ljava/io/File;

    iget-object p2, p0, Lcom/a/a/b/n;->e:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/b/n;->f:J

    iput-object p1, p0, Lcom/a/a/b/n;->d:Lcom/androlua/LuaEditor;

    new-instance p2, Lcom/a/a/b/e;

    invoke-direct {p2, p1}, Lcom/a/a/b/e;-><init>(Lcom/a/a/b/e$a;)V

    iput-object p2, p0, Lcom/a/a/b/n;->a:Lcom/a/a/b/e;

    new-instance p2, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Lcom/androlua/LuaEditor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/a/a/b/n;->b:Landroid/app/ProgressDialog;

    iget-object p1, p0, Lcom/a/a/b/n;->b:Landroid/app/ProgressDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object p1, p0, Lcom/a/a/b/n;->b:Landroid/app/ProgressDialog;

    const-string p2, "\u6b63\u5728\u6253\u5f00"

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/a/a/b/n;->b:Landroid/app/ProgressDialog;

    const p2, 0x108009b

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setIcon(I)V

    iget-object p1, p0, Lcom/a/a/b/n;->b:Landroid/app/ProgressDialog;

    iget-wide v0, p0, Lcom/a/a/b/n;->f:J

    long-to-int p2, v0

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    const/4 v2, 0x0

    sput v2, Lcom/a/a/b/n;->c:I

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    sget v3, Lcom/a/a/b/n;->c:I

    add-int/2addr v3, v4

    sput v3, Lcom/a/a/b/n;->c:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/a/a/b/n;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/a/a/b/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/a/a/b/n;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/a/a/b/n;->e:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1}, Lcom/a/a/b/n;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/a/a/b/n;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string p1, ""

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/a/a/b/n;->d:Lcom/androlua/LuaEditor;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/a/a/b/n;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/n;->b:Landroid/app/ProgressDialog;

    sget v1, Lcom/a/a/b/n;->c:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
