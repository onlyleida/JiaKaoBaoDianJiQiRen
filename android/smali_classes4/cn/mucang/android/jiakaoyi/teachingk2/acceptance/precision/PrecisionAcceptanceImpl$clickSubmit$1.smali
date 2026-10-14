.class final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl;->c(Landroidx/appcompat/app/d;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/q<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "front",
        "",
        "back",
        "head"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/d;

.field final synthetic $backDistance:Lkotlin/jvm/internal/Ref$DoubleRef;

.field final synthetic $frontDistance:Lkotlin/jvm/internal/Ref$DoubleRef;

.field final synthetic $headDistance:Lkotlin/jvm/internal/Ref$DoubleRef;

.field final synthetic $workOrderId:J

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl;Landroidx/appcompat/app/d;Lkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$DoubleRef;J)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->$activity:Landroidx/appcompat/app/d;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->$frontDistance:Lkotlin/jvm/internal/Ref$DoubleRef;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->$backDistance:Lkotlin/jvm/internal/Ref$DoubleRef;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->$headDistance:Lkotlin/jvm/internal/Ref$DoubleRef;

    iput-wide p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->$workOrderId:J

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    move-object v5, p3

    check-cast v5, Ljava/lang/Double;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->invoke(DDLjava/lang/Double;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(DDLjava/lang/Double;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->$activity:Landroidx/appcompat/app/d;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->$frontDistance:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-wide v3, v3, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->$backDistance:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-wide v5, v5, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->$headDistance:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-wide v7, v7, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$clickSubmit$1;->$workOrderId:J

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-object/from16 v13, p5

    invoke-static/range {v1 .. v15}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl;->v(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl;Landroidx/appcompat/app/d;DDDDDLjava/lang/Double;J)V

    return-void
.end method
