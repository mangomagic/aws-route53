locals {
  #
  # Build A records data first by grouping by hostname and building data structure 
  #
  a_group = { for a in var.a_records : a.name == "@" ? var.domain : a.name => {
    ip  = a.ip
    ttl = a.ttl
    }...
  }

  a_records = { for name, a_data in local.a_group : name => {
    records = [for a in a_data : a.ip]
    ttl     = min([for a in a_data : a.ttl]...)
    }
  }

  # Convert this to use records array?
  cname_records = { for cname in var.cname_records : cname.uid => {
    name    = cname.name
    records = [cname.domain == "@" ? var.domain : cname.domain]
    ttl     = cname.ttl
    }
  }

  mx_group = { for mx in var.mx_records : mx.domain == "@" ? var.domain : mx.domain => {
    hostname = mx.hostname
    priority = mx.priority
    ttl      = mx.ttl
    }...
  }

  mx_records = { for name, mx_data in local.mx_group : name => {
    records = [for mx in mx_data : format("%s %s", mx.priority, mx.hostname)]
    ttl     = min([for mx in mx_data : mx.ttl]...)
    }
  }

  txt_group = { for txt in var.txt_records : txt.hostname == "@" ? var.domain : txt.hostname => {
    txt = txt.txt
    ttl = txt.ttl
    }...
  }

  txt_records = { for name, txt_data in local.txt_group : name => {
    records = [for txt in txt_data : txt.txt]
    ttl     = min([for txt in txt_data : txt.ttl]...)
    }
  }
}
