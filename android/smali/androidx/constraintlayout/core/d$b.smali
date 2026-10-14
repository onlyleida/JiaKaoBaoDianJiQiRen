.class Landroidx/constraintlayout/core/d$b;
.super Landroidx/constraintlayout/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/b;-><init>()V

    .line 2
    new-instance p1, Landroidx/constraintlayout/core/i;

    invoke-direct {p1, p0, p2}, Landroidx/constraintlayout/core/i;-><init>(Landroidx/constraintlayout/core/b;Landroidx/constraintlayout/core/c;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    return-void
.end method
