.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;
.super Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Left:I = 0x1

.field public static final LeftOrRight:I = 0x3

.field public static final Right:I = 0x2


# instance fields
.field public turn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Angle:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;-><init>()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Angle:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;->turn:I

    return-void
.end method
