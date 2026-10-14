.class public Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public lineNum:I

.field public subStep:I

.field public wheel:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;->wheel:I

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;->lineNum:I

    .line 5
    iput p3, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;->subStep:I

    .line 6
    iput p4, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;->x:I

    .line 7
    iput p5, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;->y:I

    return-void
.end method
