.class public Lcom/a/a/b/d;
.super Lcom/a/a/b/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/a/a/b/b;-><init>()V

    sget-object v0, Lcom/a/a/b/b$a;->a:Lcom/a/a/b/b$a;

    const v1, -0xcccccd

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/d;->a(Lcom/a/a/b/b$a;I)V

    sget-object v0, Lcom/a/a/b/b$a;->b:Lcom/a/a/b/b$a;

    const v1, -0xf0f13

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/d;->a(Lcom/a/a/b/b$a;I)V

    sget-object v0, Lcom/a/a/b/b$a;->c:Lcom/a/a/b/b$a;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/d;->a(Lcom/a/a/b/b$a;I)V

    sget-object v0, Lcom/a/a/b/b$a;->e:Lcom/a/a/b/b$a;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/d;->a(Lcom/a/a/b/b$a;I)V

    return-void
.end method
