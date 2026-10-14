.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;
.super Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Time:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;-><init>()V

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Time:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    return-void
.end method
