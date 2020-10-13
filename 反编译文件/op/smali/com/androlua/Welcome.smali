.class public Lcom/androlua/Welcome;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/Welcome$UpdateTask;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/androlua/LuaApplication;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/androlua/Welcome;)J
    .locals 2

    iget-wide v0, p0, Lcom/androlua/Welcome;->e:J

    return-wide v0
.end method

.method static synthetic b(Lcom/androlua/Welcome;)J
    .locals 2

    iget-wide v0, p0, Lcom/androlua/Welcome;->f:J

    return-wide v0
.end method

.method static synthetic c(Lcom/androlua/Welcome;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Welcome;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/androlua/Welcome;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Welcome;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/androlua/Welcome;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Welcome;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/androlua/Welcome;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Welcome;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public checkInfo()Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/androlua/Welcome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androlua/Welcome;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "appInfo"

    invoke-virtual {p0, v4, v0}, Lcom/androlua/Welcome;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "versionName"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "versionName"

    invoke-interface {v6, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v7, p0, Lcom/androlua/Welcome;->g:Z

    iput-object v1, p0, Lcom/androlua/Welcome;->h:Ljava/lang/String;

    iput-object v5, p0, Lcom/androlua/Welcome;->i:Ljava/lang/String;

    :cond_0
    const-string v1, "lastUpdateTime"

    const-wide/16 v5, 0x0

    invoke-interface {v4, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-eqz v1, :cond_1

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "lastUpdateTime"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v7, p0, Lcom/androlua/Welcome;->a:Z

    iput-wide v2, p0, Lcom/androlua/Welcome;->e:J

    iput-wide v5, p0, Lcom/androlua/Welcome;->f:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/androlua/Welcome;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/androlua/LuaApplication;

    iput-object p1, p0, Lcom/androlua/Welcome;->b:Lcom/androlua/LuaApplication;

    iget-object p1, p0, Lcom/androlua/Welcome;->b:Lcom/androlua/LuaApplication;

    iget-object p1, p1, Lcom/androlua/LuaApplication;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/androlua/Welcome;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/androlua/Welcome;->b:Lcom/androlua/LuaApplication;

    iget-object p1, p1, Lcom/androlua/LuaApplication;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/androlua/Welcome;->d:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/androlua/Welcome;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Lcom/androlua/NineBitmapDrawable;

    iget-object v1, p0, Lcom/androlua/Welcome;->b:Lcom/androlua/LuaApplication;

    const-string v2, "setup.png"

    invoke-virtual {v1, v2}, Lcom/androlua/LuaApplication;->getLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/androlua/LuaBitmap;->getLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androlua/NineBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/androlua/Welcome;->checkInfo()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/androlua/Welcome$UpdateTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/androlua/Welcome$UpdateTask;-><init>(Lcom/androlua/Welcome;Lcom/androlua/Welcome$1;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/androlua/Welcome$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/Welcome;->startActivity()V

    return-void
.end method

.method public startActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v1, p0, Lcom/androlua/Welcome;->g:Z

    if-eqz v1, :cond_0

    const-string v1, "isVersionChanged"

    iget-boolean v2, p0, Lcom/androlua/Welcome;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "newVersionName"

    iget-object v2, p0, Lcom/androlua/Welcome;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "oldVersionName"

    iget-object v2, p0, Lcom/androlua/Welcome;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/androlua/Welcome;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/androlua/Welcome;->finish()V

    return-void
.end method
