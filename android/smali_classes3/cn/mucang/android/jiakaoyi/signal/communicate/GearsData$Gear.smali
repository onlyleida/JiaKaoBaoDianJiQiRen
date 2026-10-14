.class public Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gear"
.end annotation


# instance fields
.field private bottom:I

.field private left:I

.field private right:I

.field private top:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->type:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->top:I

    .line 4
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->bottom:I

    .line 5
    iput p4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->left:I

    .line 6
    iput p5, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->right:I

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->bottom:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->left:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->right:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->top:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->bottom:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->left:I

    return-void
.end method

.method public setRight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->right:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->top:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;->type:Ljava/lang/String;

    return-void
.end method
