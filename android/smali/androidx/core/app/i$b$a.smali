.class public final Landroidx/core/app/i$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/core/graphics/drawable/IconCompat;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Landroid/app/PendingIntent;

.field private d:Z

.field private final e:Landroid/os/Bundle;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/n;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 2
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->l(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    move-object v2, v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Landroidx/core/app/i$b$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/n;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 10

    .line 1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Landroidx/core/app/i$b$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/n;ZIZZ)V

    return-void
.end method

.method private constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/n;ZIZZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/core/app/i$b$a;->d:Z

    .line 5
    iput-boolean v0, p0, Landroidx/core/app/i$b$a;->h:Z

    .line 6
    iput-object p1, p0, Landroidx/core/app/i$b$a;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 7
    invoke-static {p2}, Landroidx/core/app/i$f;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/i$b$a;->b:Ljava/lang/CharSequence;

    .line 8
    iput-object p3, p0, Landroidx/core/app/i$b$a;->c:Landroid/app/PendingIntent;

    .line 9
    iput-object p4, p0, Landroidx/core/app/i$b$a;->e:Landroid/os/Bundle;

    if-nez p5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p1, p0, Landroidx/core/app/i$b$a;->f:Ljava/util/ArrayList;

    .line 12
    iput-boolean p6, p0, Landroidx/core/app/i$b$a;->d:Z

    .line 13
    iput p7, p0, Landroidx/core/app/i$b$a;->g:I

    .line 14
    iput-boolean p8, p0, Landroidx/core/app/i$b$a;->h:Z

    .line 15
    iput-boolean p9, p0, Landroidx/core/app/i$b$a;->i:Z

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/app/i$b$a;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/core/app/i$b$a;->c:Landroid/app/PendingIntent;

    const-string v1, "Contextual Actions must contain a valid PendingIntent"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static d(Landroid/app/Notification$Action;)Landroidx/core/app/i$b$a;
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->d(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 3
    new-instance v2, Landroidx/core/app/i$b$a;

    iget-object v3, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, v1, v3, v4}, Landroidx/core/app/i$b$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Landroidx/core/app/i$b$a;

    iget v1, p0, Landroid/app/Notification$Action;->icon:I

    iget-object v3, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, v1, v3, v4}, Landroidx/core/app/i$b$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    array-length v3, v1

    if-eqz v3, :cond_1

    .line 7
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 8
    invoke-static {v5}, Landroidx/core/app/n;->c(Landroid/app/RemoteInput;)Landroidx/core/app/n;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/core/app/i$b$a;->a(Landroidx/core/app/n;)Landroidx/core/app/i$b$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v1

    iput-boolean v1, v2, Landroidx/core/app/i$b$a;->d:Z

    :cond_2
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/core/app/i$b$a;->f(I)Landroidx/core/app/i$b$a;

    :cond_3
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result p0

    invoke-virtual {v2, p0}, Landroidx/core/app/i$b$a;->e(Z)Landroidx/core/app/i$b$a;

    :cond_4
    return-object v2
.end method


# virtual methods
.method public a(Landroidx/core/app/n;)Landroidx/core/app/i$b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$b$a;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i$b$a;->f:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/core/app/i$b$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public b()Landroidx/core/app/i$b;
    .locals 15

    .line 1
    invoke-direct {p0}, Landroidx/core/app/i$b$a;->c()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Landroidx/core/app/i$b$a;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/n;

    .line 6
    invoke-virtual {v3}, Landroidx/core/app/n;->k()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v10, v3

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/core/app/n;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/app/n;

    move-object v10, v0

    .line 11
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/core/app/n;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroidx/core/app/n;

    :goto_2
    move-object v9, v3

    .line 13
    new-instance v0, Landroidx/core/app/i$b;

    iget-object v5, p0, Landroidx/core/app/i$b$a;->a:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v6, p0, Landroidx/core/app/i$b$a;->b:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroidx/core/app/i$b$a;->c:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroidx/core/app/i$b$a;->e:Landroid/os/Bundle;

    iget-boolean v11, p0, Landroidx/core/app/i$b$a;->d:Z

    iget v12, p0, Landroidx/core/app/i$b$a;->g:I

    iget-boolean v13, p0, Landroidx/core/app/i$b$a;->h:Z

    iget-boolean v14, p0, Landroidx/core/app/i$b$a;->i:Z

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Landroidx/core/app/i$b;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/n;[Landroidx/core/app/n;ZIZZ)V

    return-object v0
.end method

.method public e(Z)Landroidx/core/app/i$b$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/core/app/i$b$a;->i:Z

    return-object p0
.end method

.method public f(I)Landroidx/core/app/i$b$a;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/i$b$a;->g:I

    return-object p0
.end method
