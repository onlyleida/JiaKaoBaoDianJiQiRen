.class Landroidx/loader/a/b$c;
.super Landroidx/lifecycle/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final b:Landroidx/lifecycle/m0$b;


# instance fields
.field private a:Landroidx/collection/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/h<",
            "Landroidx/loader/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/loader/a/b$c$a;

    invoke-direct {v0}, Landroidx/loader/a/b$c$a;-><init>()V

    sput-object v0, Landroidx/loader/a/b$c;->b:Landroidx/lifecycle/m0$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/j0;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/h;

    invoke-direct {v0}, Landroidx/collection/h;-><init>()V

    iput-object v0, p0, Landroidx/loader/a/b$c;->a:Landroidx/collection/h;

    return-void
.end method

.method static b(Landroidx/lifecycle/n0;)Landroidx/loader/a/b$c;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/m0;

    sget-object v1, Landroidx/loader/a/b$c;->b:Landroidx/lifecycle/m0$b;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/n0;Landroidx/lifecycle/m0$b;)V

    const-class p0, Landroidx/loader/a/b$c;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p0

    check-cast p0, Landroidx/loader/a/b$c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/loader/a/b$c;->a:Landroidx/collection/h;

    invoke-virtual {v0}, Landroidx/collection/h;->k()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/loader/a/b$c;->a:Landroidx/collection/h;

    invoke-virtual {v2}, Landroidx/collection/h;->k()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Landroidx/loader/a/b$c;->a:Landroidx/collection/h;

    invoke-virtual {v2, v1}, Landroidx/collection/h;->l(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/a/b$a;

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/loader/a/b$c;->a:Landroidx/collection/h;

    invoke-virtual {p1, v1}, Landroidx/collection/h;->i(I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    .line 7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/loader/a/b$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v0, p2, p3, p4}, Landroidx/loader/a/b$a;->q(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method c()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/loader/a/b$c;->a:Landroidx/collection/h;

    invoke-virtual {v0}, Landroidx/collection/h;->k()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/loader/a/b$c;->a:Landroidx/collection/h;

    invoke-virtual {v2, v1}, Landroidx/collection/h;->l(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/a/b$a;

    .line 3
    invoke-virtual {v2}, Landroidx/loader/a/b$a;->r()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/j0;->onCleared()V

    .line 2
    iget-object v0, p0, Landroidx/loader/a/b$c;->a:Landroidx/collection/h;

    invoke-virtual {v0}, Landroidx/collection/h;->k()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/loader/a/b$c;->a:Landroidx/collection/h;

    invoke-virtual {v0}, Landroidx/collection/h;->c()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/loader/a/b$c;->a:Landroidx/collection/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/collection/h;->l(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/loader/a/b$a;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroidx/loader/a/b$a;->p(Z)Landroidx/loader/content/a;

    const/4 v0, 0x0

    throw v0
.end method
