.class public final Landroidx/core/app/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/n$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/CharSequence;

.field private final c:[Ljava/lang/CharSequence;

.field private final d:Z

.field private final e:I

.field private final f:Landroid/os/Bundle;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/app/n;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/core/app/n;->b:Ljava/lang/CharSequence;

    .line 4
    iput-object p3, p0, Landroidx/core/app/n;->c:[Ljava/lang/CharSequence;

    .line 5
    iput-boolean p4, p0, Landroidx/core/app/n;->d:Z

    .line 6
    iput p5, p0, Landroidx/core/app/n;->e:I

    .line 7
    iput-object p6, p0, Landroidx/core/app/n;->f:Landroid/os/Bundle;

    .line 8
    iput-object p7, p0, Landroidx/core/app/n;->g:Ljava/util/Set;

    .line 9
    invoke-virtual {p0}, Landroidx/core/app/n;->g()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 10
    invoke-virtual {p0}, Landroidx/core/app/n;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "setEditChoicesBeforeSending requires setAllowFreeFormInput"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method static a(Landroidx/core/app/n;)Landroid/app/RemoteInput;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Landroid/app/RemoteInput$Builder;

    .line 2
    invoke-virtual {p0}, Landroidx/core/app/n;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/core/app/n;->i()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroidx/core/app/n;->f()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroidx/core/app/n;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroidx/core/app/n;->h()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/core/app/n;->e()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v1, v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowDataType(Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;

    goto :goto_0

    :cond_0
    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 10
    invoke-virtual {p0}, Landroidx/core/app/n;->g()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;

    .line 11
    :cond_1
    invoke-virtual {v1}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object p0

    return-object p0
.end method

.method static b([Landroidx/core/app/n;)[Landroid/app/RemoteInput;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/app/RemoteInput;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, p0, v1

    invoke-static {v2}, Landroidx/core/app/n;->a(Landroidx/core/app/n;)Landroid/app/RemoteInput;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static c(Landroid/app/RemoteInput;)Landroidx/core/app/n;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Landroidx/core/app/n$a;

    .line 2
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/app/n$a;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/n$a;->g(Ljava/lang/CharSequence;)Landroidx/core/app/n$a;

    .line 4
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/n$a;->e([Ljava/lang/CharSequence;)Landroidx/core/app/n$a;

    .line 5
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/n$a;->d(Z)Landroidx/core/app/n$a;

    .line 6
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/n$a;->a(Landroid/os/Bundle;)Landroidx/core/app/n$a;

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v1, v3, v4}, Landroidx/core/app/n$a;->c(Ljava/lang/String;Z)Landroidx/core/app/n$a;

    goto :goto_0

    :cond_0
    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/core/app/n$a;->f(I)Landroidx/core/app/n$a;

    .line 11
    :cond_1
    invoke-virtual {v1}, Landroidx/core/app/n$a;->b()Landroidx/core/app/n;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/app/n;->d:Z

    return v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/app/n;->g:Ljava/util/Set;

    return-object v0
.end method

.method public f()[Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/n;->c:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/app/n;->e:I

    return v0
.end method

.method public h()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/n;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/n;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/core/app/n;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/core/app/n;->f()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/n;->f()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/core/app/n;->e()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/core/app/n;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
