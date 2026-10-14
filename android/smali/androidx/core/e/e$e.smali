.class Landroidx/core/e/e$e;
.super Landroidx/core/e/e$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method constructor <init>(Landroidx/core/e/e$c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/e/e$d;-><init>(Landroidx/core/e/e$c;)V

    .line 2
    iput-boolean p2, p0, Landroidx/core/e/e$e;->b:Z

    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/e/e$e;->b:Z

    return v0
.end method
