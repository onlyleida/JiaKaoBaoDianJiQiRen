.class public Landroidx/transition/b;
.super Landroidx/transition/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/q;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/transition/b;->w()V

    return-void
.end method

.method private w()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/transition/q;->s(I)Landroidx/transition/q;

    .line 2
    new-instance v1, Landroidx/transition/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/transition/d;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/transition/q;->g(Landroidx/transition/m;)Landroidx/transition/q;

    new-instance v1, Landroidx/transition/c;

    invoke-direct {v1}, Landroidx/transition/c;-><init>()V

    .line 3
    invoke-virtual {p0, v1}, Landroidx/transition/q;->g(Landroidx/transition/m;)Landroidx/transition/q;

    new-instance v1, Landroidx/transition/d;

    invoke-direct {v1, v0}, Landroidx/transition/d;-><init>(I)V

    .line 4
    invoke-virtual {p0, v1}, Landroidx/transition/q;->g(Landroidx/transition/m;)Landroidx/transition/q;

    return-void
.end method
