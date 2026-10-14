.class public final Landroidx/core/app/i$e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/i$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/app/PendingIntent;

.field private b:Landroidx/core/graphics/drawable/IconCompat;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/app/PendingIntent;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bubble requires non-null pending intent"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Bubbles require non-null icon"

    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Landroidx/core/app/i$e$c;->a:Landroid/app/PendingIntent;

    .line 9
    iput-object p2, p0, Landroidx/core/app/i$e$c;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Landroidx/core/app/i$e$c;->g:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bubble requires a non-null shortcut id"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(IZ)Landroidx/core/app/i$e$c;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Landroidx/core/app/i$e$c;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/i$e$c;->e:I

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Landroidx/core/app/i$e$c;->e:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/i$e$c;->e:I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Landroidx/core/app/i$e;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v7, p0, Landroidx/core/app/i$e$c;->g:Ljava/lang/String;

    if-nez v7, :cond_0

    iget-object v0, p0, Landroidx/core/app/i$e$c;->a:Landroid/app/PendingIntent;

    const-string v1, "Must supply pending intent or shortcut to bubble"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    if-nez v7, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/core/app/i$e$c;->b:Landroidx/core/graphics/drawable/IconCompat;

    const-string v1, "Must supply an icon or shortcut for the bubble"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    :cond_1
    new-instance v9, Landroidx/core/app/i$e;

    iget-object v1, p0, Landroidx/core/app/i$e$c;->a:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroidx/core/app/i$e$c;->f:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroidx/core/app/i$e$c;->b:Landroidx/core/graphics/drawable/IconCompat;

    iget v4, p0, Landroidx/core/app/i$e$c;->c:I

    iget v5, p0, Landroidx/core/app/i$e$c;->d:I

    iget v10, p0, Landroidx/core/app/i$e$c;->e:I

    const/4 v8, 0x0

    move-object v0, v9

    move v6, v10

    invoke-direct/range {v0 .. v8}, Landroidx/core/app/i$e;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Landroidx/core/app/i$a;)V

    .line 6
    invoke-virtual {v9, v10}, Landroidx/core/app/i$e;->j(I)V

    return-object v9
.end method

.method public b(Z)Landroidx/core/app/i$e$c;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/core/app/i$e$c;->f(IZ)Landroidx/core/app/i$e$c;

    return-object p0
.end method

.method public c(Landroid/app/PendingIntent;)Landroidx/core/app/i$e$c;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$e$c;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public d(I)Landroidx/core/app/i$e$c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/core/app/i$e$c;->c:I

    .line 2
    iput v0, p0, Landroidx/core/app/i$e$c;->d:I

    return-object p0
.end method

.method public e(I)Landroidx/core/app/i$e$c;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/i$e$c;->d:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/core/app/i$e$c;->c:I

    return-object p0
.end method

.method public g(Z)Landroidx/core/app/i$e$c;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/core/app/i$e$c;->f(IZ)Landroidx/core/app/i$e$c;

    return-object p0
.end method
