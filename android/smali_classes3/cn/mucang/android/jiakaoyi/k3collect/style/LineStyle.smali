.class public Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public color:I

.field public dashInterval:F

.field public dashLength:I

.field public isDashed:Z

.field public lineWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    return-void
.end method
