.class public Lcn/mucang/android/jiakaoyi/framework/base/LimitedQueue;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final limit:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/LimitedQueue;->limit:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/LimitedQueue;->limit:I

    if-le p1, v0, :cond_0

    .line 3
    invoke-super {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
