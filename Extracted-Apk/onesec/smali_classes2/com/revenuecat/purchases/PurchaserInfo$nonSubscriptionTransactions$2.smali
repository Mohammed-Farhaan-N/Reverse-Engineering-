.class final Lcom/revenuecat/purchases/PurchaserInfo$nonSubscriptionTransactions$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PurchaserInfo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/PurchaserInfo;-><init>(Lcom/revenuecat/purchases/EntitlementInfos;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Date;Lorg/json/JSONObject;ILjava/util/Date;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/revenuecat/purchases/models/Transaction;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPurchaserInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaserInfo.kt\ncom/revenuecat/purchases/PurchaserInfo$nonSubscriptionTransactions$2\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,205:1\n32#2,2:206\n1043#3:208\n*S KotlinDebug\n*F\n+ 1 PurchaserInfo.kt\ncom/revenuecat/purchases/PurchaserInfo$nonSubscriptionTransactions$2\n*L\n89#1:206,2\n98#1:208\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/revenuecat/purchases/models/Transaction;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/PurchaserInfo;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/PurchaserInfo$nonSubscriptionTransactions$2;->this$0:Lcom/revenuecat/purchases/PurchaserInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/revenuecat/purchases/PurchaserInfo$nonSubscriptionTransactions$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/revenuecat/purchases/models/Transaction;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 88
    iget-object v1, p0, Lcom/revenuecat/purchases/PurchaserInfo$nonSubscriptionTransactions$2;->this$0:Lcom/revenuecat/purchases/PurchaserInfo;

    invoke-static {v1}, Lcom/revenuecat/purchases/PurchaserInfo;->access$getSubscriberJSONObject$p(Lcom/revenuecat/purchases/PurchaserInfo;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "non_subscriptions"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "nonSubscriptions.keys()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 91
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    .line 92
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 94
    new-instance v8, Lcom/revenuecat/purchases/models/Transaction;

    const-string v9, "productId"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "transactionJSONObject"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v3, v7}, Lcom/revenuecat/purchases/models/Transaction;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 95
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 98
    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    .line 208
    new-instance v1, Lcom/revenuecat/purchases/PurchaserInfo$nonSubscriptionTransactions$2$invoke$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/revenuecat/purchases/PurchaserInfo$nonSubscriptionTransactions$2$invoke$$inlined$sortedBy$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
