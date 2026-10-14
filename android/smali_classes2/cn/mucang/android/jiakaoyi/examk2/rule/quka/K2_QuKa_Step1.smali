.class public Lcn/mucang/android/jiakaoyi/examk2/rule/quka/K2_QuKa_Step1;
.super Lcn/mucang/android/jiakaoyi/examk2/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/c/a<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2QuKaConfig;",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/collision/f;Lcn/mucang/android/jiakaoyi/examk2/config/K2QuKaConfig;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2QuKaConfig;->p407105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2QuKaConfig;->p407104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    invoke-direct {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/examk2/c/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method


# virtual methods
.method public stepName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u66f2\u7ebf\u884c\u9a76"

    return-object v0
.end method
