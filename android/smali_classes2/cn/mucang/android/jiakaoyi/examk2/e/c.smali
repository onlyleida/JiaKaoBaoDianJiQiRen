.class public Lcn/mucang/android/jiakaoyi/examk2/e/c;
.super Lcn/mucang/android/jiakaoyi/examk2/e/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/e/f<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/c;)V
    .locals 6

    .line 1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;->p413101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;->p413100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;->p413103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;->p413102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/examk2/e/f;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    return-void
.end method
