.class public final synthetic Lcn/mucang/jiakaoyi/uilib/message/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# static fields
.field public static final synthetic a:Lcn/mucang/jiakaoyi/uilib/message/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/message/a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/message/a;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/message/a;->a:Lcn/mucang/jiakaoyi/uilib/message/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->f(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;)V

    return-void
.end method
