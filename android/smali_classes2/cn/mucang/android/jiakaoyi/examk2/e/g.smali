.class public Lcn/mucang/android/jiakaoyi/examk2/e/g;
.super Lcn/mucang/android/jiakaoyi/examk2/e/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/e/f<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;",
        ">;"
    }
.end annotation


# static fields
.field static j:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field static k:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field static l:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field static m:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/examk2/e/g;->j:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/examk2/e/g;->k:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/examk2/e/g;->l:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/examk2/e/g;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/e/g;->j:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/e/g;->k:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/e/g;->l:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    const-string v1, ""

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/e/g;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;)V
    .locals 6

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/e/g;->j:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/e/g;->l:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    sget-object v3, Lcn/mucang/android/jiakaoyi/examk2/e/g;->k:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    sget-object v4, Lcn/mucang/android/jiakaoyi/examk2/e/g;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/examk2/e/f;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    return-void
.end method
