.class public Landroidx/core/d/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Landroidx/core/d/f$b;


# direct methods
.method public constructor <init>(I[Landroidx/core/d/f$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/core/d/f$a;->a:I

    .line 3
    iput-object p2, p0, Landroidx/core/d/f$a;->b:[Landroidx/core/d/f$b;

    return-void
.end method

.method static a(I[Landroidx/core/d/f$b;)Landroidx/core/d/f$a;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/d/f$a;

    invoke-direct {v0, p0, p1}, Landroidx/core/d/f$a;-><init>(I[Landroidx/core/d/f$b;)V

    return-object v0
.end method


# virtual methods
.method public b()[Landroidx/core/d/f$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/d/f$a;->b:[Landroidx/core/d/f$b;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/d/f$a;->a:I

    return v0
.end method
