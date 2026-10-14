.class public Lf/a/a/a/t/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lf/a/a/a/t/a;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lf/a/a/a/t/a;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lf/a/a/a/t/a;->a:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/a/a/a/t/a;->c:I

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/a/a/a/t/a;->b:I

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/a/a/a/t/a;->a:I

    return-void
.end method
