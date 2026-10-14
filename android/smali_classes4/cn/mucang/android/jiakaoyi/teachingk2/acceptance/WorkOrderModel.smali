.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;",
        "Ljava/io/Serializable;",
        "()V",
        "customerName",
        "",
        "getCustomerName",
        "()Ljava/lang/String;",
        "setCustomerName",
        "(Ljava/lang/String;)V",
        "examSiteName",
        "getExamSiteName",
        "setExamSiteName",
        "workOrderId",
        "",
        "getWorkOrderId",
        "()J",
        "setWorkOrderId",
        "(J)V",
        "TeachingK2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private customerName:Ljava/lang/String;

.field private examSiteName:Ljava/lang/String;

.field private workOrderId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCustomerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;->customerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getExamSiteName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;->examSiteName:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkOrderId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;->workOrderId:J

    return-wide v0
.end method

.method public final setCustomerName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;->customerName:Ljava/lang/String;

    return-void
.end method

.method public final setExamSiteName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;->examSiteName:Ljava/lang/String;

    return-void
.end method

.method public final setWorkOrderId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;->workOrderId:J

    return-void
.end method
