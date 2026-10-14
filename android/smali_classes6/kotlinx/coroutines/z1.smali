.class public abstract Lkotlinx/coroutines/z1;
.super Lkotlinx/coroutines/a0;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/y0;
.implements Lkotlinx/coroutines/n1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/t1;",
        ">",
        "Lkotlinx/coroutines/a0;",
        "Lkotlinx/coroutines/y0;",
        "Lkotlinx/coroutines/n1;"
    }
.end annotation


# instance fields
.field public final d:Lkotlinx/coroutines/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/t1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/a0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/z1;->d:Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public d()Lkotlinx/coroutines/e2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/z1;->d:Lkotlinx/coroutines/t1;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/a2;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/a2;->E0(Lkotlinx/coroutines/z1;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
