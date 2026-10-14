.class public Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;-><init>()V

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;->x:I

    .line 3
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v1, v3

    double-to-int p0, v1

    iput p0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;->y:I

    return-object v0
.end method
