.class public Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_LuKouZuoZhuan_Starter;
.super Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;)V
    .locals 11

    .line 1
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v7, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v8, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v9, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208125:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v10, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method
