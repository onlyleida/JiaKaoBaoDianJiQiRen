.class public Lcom/mobile/auth/h/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobile/auth/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/h/d$a;->a:Lorg/json/JSONArray;

    return-object v0
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/d$a;->a:Lorg/json/JSONArray;

    return-void
.end method
