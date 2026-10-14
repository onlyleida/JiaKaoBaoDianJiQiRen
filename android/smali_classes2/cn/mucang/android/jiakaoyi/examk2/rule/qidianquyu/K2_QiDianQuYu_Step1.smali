.class public Lcn/mucang/android/jiakaoyi/examk2/rule/qidianquyu/K2_QiDianQuYu_Step1;
.super Lcn/mucang/android/jiakaoyi/examk2/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/c/a<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;)V
    .locals 1

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;-><init>()V

    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/examk2/c/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method


# virtual methods
.method public stepName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8d77\u70b9\u533a\u57df"

    return-object v0
.end method
